import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_house_app/screens/LiveChat/widgets/ParticipantInfoWidget.dart';
import 'package:green_house_app/screens/LiveChat/widgets/noVideo.dart';

import 'package:livekit_client/livekit_client.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';

late final Room room;
_onTapDisconnect(context) async {
  final result = await context.showDisconnectDialog();
  if (result == true) await room.disconnect();
}

abstract class ParticipantWidget extends StatefulWidget {
  // Convenience method to return relevant widget for participant
  static ParticipantWidget widgetFor(Participant participant) {
    if (participant is LocalParticipant) {
      return LocalParticipantWidget(participant);
    } else if (participant is RemoteParticipant) {
      return RemoteParticipantWidget(participant);
    }
    throw UnimplementedError('Unknown participant type');
  }

  // Must be implemented by child class
  abstract final Participant participant;
  final VideoQuality quality;

  const ParticipantWidget({
    this.quality = VideoQuality.MEDIUM,
    Key? key,
  }) : super(key: key);
}

class LocalParticipantWidget extends ParticipantWidget {
  @override
  final LocalParticipant participant;

  const LocalParticipantWidget(
    this.participant, {
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LocalParticipantWidgetState();
}

class RemoteParticipantWidget extends ParticipantWidget {
  @override
  final RemoteParticipant participant;

  const RemoteParticipantWidget(
    this.participant, {
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RemoteParticipantWidgetState();
}

abstract class _ParticipantWidgetState<T extends ParticipantWidget> extends State<T> {
  //
  bool _visible = true;
  VideoTrack? get activeVideoTrack;
  TrackPublication? get firstVideoPublication;
  TrackPublication? get firstAudioPublication;

  @override
  void initState() {
    super.initState();
    widget.participant.addListener(_onParticipantChanged);
    _onParticipantChanged();
  }

  @override
  void dispose() {
    widget.participant.removeListener(_onParticipantChanged);
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant T oldWidget) {
    oldWidget.participant.removeListener(_onParticipantChanged);
    widget.participant.addListener(_onParticipantChanged);
    _onParticipantChanged();
    super.didUpdateWidget(oldWidget);
  }

  // Notify Flutter that UI re-build is required, but we don't set anything here
  // since the updated values are computed properties.
  void _onParticipantChanged() => setState(() {});

  // Widgets to show above the info bar
  List<Widget> extraWidgets() => [];

  @override
  Widget build(BuildContext ctx) => /* widget.participant.isSpeaking?  */ Scaffold(
        backgroundColor: AppColors.blackColor,
        appBar: AppBar(
          backgroundColor: AppColors.blackColor,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "",
                style: kBodyregular16.copyWith(color: AppColors.whiteColor),
              ),
              Text(
                'Friday Night Vibes',
                style: kBodyregular16.copyWith(color: AppColors.whiteColor),
              ),
              GestureDetector(
                onTap: () {
                  _onTapDisconnect(context);
                },
                child: Text(
                  'End',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      fontFamily: 'Poppins',
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          /*  decoration: BoxDecoration(
            color: Theme.of(ctx).cardColor,
          ), */
          child: Stack(
            children: [
              // Video
              InkWell(
                onTap: () => setState(() => _visible = !_visible),
                child: activeVideoTrack != null
                    ? VideoTrackRenderer(
                        activeVideoTrack!,
                        // fit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
                      )
                    : const NoVideoWidget(),
              ),

              // Bottom bar
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // ...extraWidgets(),
                    ParticipantInfoWidget(
                      title: widget.participant.name.isNotEmpty ? '${widget.participant.name} (${widget.participant.identity})' : widget.participant.identity,
                      audioAvailable: firstAudioPublication?.muted == false && firstAudioPublication?.subscribed == true,
                      connectionQuality: widget.participant.connectionQuality,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

class _LocalParticipantWidgetState extends _ParticipantWidgetState<LocalParticipantWidget> {
  @override
  LocalTrackPublication<LocalVideoTrack>? get firstVideoPublication => widget.participant.videoTracks.first;

  @override
  LocalTrackPublication<LocalAudioTrack>? get firstAudioPublication => widget.participant.audioTracks.first;

  @override
  VideoTrack? get activeVideoTrack {
    if (firstVideoPublication?.subscribed == true && firstVideoPublication?.muted == false && _visible) {
      return firstVideoPublication?.track;
    }
    return null;
  }
}

class _RemoteParticipantWidgetState extends _ParticipantWidgetState<RemoteParticipantWidget> {
  @override
  RemoteTrackPublication<RemoteVideoTrack>? get firstVideoPublication => widget.participant.videoTracks.first;

  @override
  RemoteTrackPublication<RemoteAudioTrack>? get firstAudioPublication => widget.participant.audioTracks.first;

  @override
  VideoTrack? get activeVideoTrack {
    for (final trackPublication in widget.participant.videoTracks) {
      print('video track ${trackPublication.sid} subscribed ${trackPublication.subscribed} muted ${trackPublication.muted}');
      if (trackPublication.subscribed && !trackPublication.muted && _visible) {
        return trackPublication.track;
      }
    }
    return null;
  }

  @override
  List<Widget> extraWidgets() => [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Menu for RemoteTrackPublication<RemoteVideoTrack>
            if (firstVideoPublication != null)
              RemoteTrackPublicationMenuWidget(
                pub: firstVideoPublication!,
                icon: Icons.video_call,
              ),
            // Menu for RemoteTrackPublication<RemoteAudioTrack>
            if (firstAudioPublication != null)
              RemoteTrackPublicationMenuWidget(
                pub: firstAudioPublication!,
                icon: Icons.volume_up,
              ),
          ],
        ),
      ];
}

class RemoteTrackPublicationMenuWidget extends StatelessWidget {
  final IconData icon;
  final RemoteTrackPublication pub;
  const RemoteTrackPublicationMenuWidget({
    required this.pub,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Material(
        color: Colors.black.withOpacity(0.3),
        child: PopupMenuButton<Function>(
          tooltip: 'Subscribe menu',
          icon: Icon(icon,
              color: {
                // TrackSubscriptionState.notAllowed: Colors.red,
                // TrackSubscriptionState.unsubscribed: Colors.grey,
                // TrackSubscriptionState.subscribed: Colors.green,
                StreamState.paused: Colors.grey,
                StreamState.active: Colors.green,
              }[pub.streamState]),
          onSelected: (value) => value(),
          itemBuilder: (BuildContext context) => <PopupMenuEntry<Function>>[
            // Subscribe/Unsubscribe
            if (pub.subscribed == false)
              PopupMenuItem(
                child: const Text('Subscribe'),
                value: () {
                  pub.enabled = true;
                },
              )
            else if (pub.subscribed == true)
              PopupMenuItem(
                child: const Text('Un-subscribe'),
                value: () {
                  pub.enabled = false;
                },
              ),
          ],
        ),
      );
}
