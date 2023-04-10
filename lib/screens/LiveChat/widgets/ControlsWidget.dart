import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_background/flutter_background.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:green_house_app/screens/LiveChat/AudienceInteraction.dart';
import 'package:green_house_app/screens/LiveChat/exts.dart';
import 'package:green_house_app/screens/LiveChat/widgets/ParticipantWidget.dart';
import 'package:livekit_client/livekit_client.dart';
import 'package:share_plus/share_plus.dart';

import '../../../resources/app_colors.dart';
import '../config.dart';

class ControlsWidget extends StatefulWidget {
  //

  final LocalParticipant participant;

  const ControlsWidget(
    room,
    this.participant, {
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ControlsWidgetState();
}

class _ControlsWidgetState extends State<ControlsWidget> {
  //
  CameraPosition position = CameraPosition.front;

  @override
  void initState() {
    super.initState();
    participant.addListener(_onChange);
  }

  @override
  void dispose() {
    participant.removeListener(_onChange);
    super.dispose();
  }

  LocalParticipant get participant => widget.participant;

  void _onChange() {
    // trigger refresh
    setState(() {});
  }

  void _unpublishAll() async {
    final result = await context.showUnPublishDialog();
    if (result == true) await participant.unpublishAllTracks();
  }

  void _disableAudio() async {
    await participant.setMicrophoneEnabled(false);
  }

  Future<void> _enableAudio() async {
    await participant.setMicrophoneEnabled(true);
  }

  void _disableVideo() async {
    await participant.setCameraEnabled(false);
  }

  void _enableVideo() async {
    await participant.setCameraEnabled(true);
  }

  void _toggleCamera() async {
    //
    final track = participant.videoTracks.first.track;
    if (track == null) return;

    try {
      final newPosition = position.switched();
      await track.setCameraPosition(newPosition);
      setState(() {
        position = newPosition;
      });
    } catch (error) {
      print('could not restart track: $error');
      return;
    }
  }

  void _enableScreenShare() async {
    await participant.setScreenShareEnabled(true);

    if (Platform.isAndroid) {
      // Android specific
      try {
        // Required for android screenshare.
        const androidConfig = FlutterBackgroundAndroidConfig(
          notificationTitle: 'Screen Sharing',
          notificationText: 'LiveKit Example is sharing the screen.',
          notificationImportance: AndroidNotificationImportance.Default,
          notificationIcon: AndroidResource(name: 'livekit_ic_launcher', defType: 'mipmap'),
        );
        await FlutterBackground.initialize(androidConfig: androidConfig);
        await FlutterBackground.enableBackgroundExecution();
      } catch (e) {
        print('could not publish video: $e');
      }
    }
  }

  void _disableScreenShare() async {
    await participant.setScreenShareEnabled(false);
    if (Platform.isAndroid) {
      // Android specific
      try {
        //   await FlutterBackground.disableBackgroundExecution();
      } catch (error) {
        print('error disabling screen share: $error');
      }
    }
  }

  void _onTapReconnect() async {
    final result = await context.showReconnectDialog();
    if (result == true) {
      try {
        await room.connect(url, token);
        await context.showReconnectSuccessDialog();
      } catch (error) {
        await context.showErrorDialog(error);
      }
    }
  }

  void _onTapUpdateSubscribePermission() async {
    final result = await context.showSubscribePermissionDialog();
    // if (result != null) {
    //   try {
    //     widget.room.localParticipant?.setTrackSubscriptionPermissions(
    //       allParticipantsAllowed: result,
    //     );
    //   } catch (error) {
    //     await context.showErrorDialog(error);
    //   }
    // }
  }

  void _onTapSimulateScenario() async {
    final result = await context.showSimulateScenarioDialog();
    // if (result != null) {
    //   print('${result}');
    //   await widget.room.
    //   await widget.room.simulateScenario(
    //     nodeFailure: result == SimulateScenarioResult.nodeFailure ? true : null,
    //     migration: result == SimulateScenarioResult.migration ? true : null,
    //     serverLeave: result == SimulateScenarioResult.serverLeave ? true : null,
    //   );
    // }
  }

  void _onTapSendData() async {
    final result = await context.showSendDataDialog();
    if (result == true) {
      await widget.participant.publishData(
        utf8.encode('This is a sample data message'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 15,
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        spacing: 20.w,
        runSpacing: 15.w,
        children: [
          GestureDetector(
            onTap: () {
              if (participant.isMicrophoneEnabled()) {
                _disableAudio();
              } else {
                _enableAudio();
              }
            },
            child: Container(
              height: 48.h,
              width: 48.w,
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff383838),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/mic.png",
                  height: 32.h,
                  width: 32.w,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (participant.isCameraEnabled()) {
                _disableVideo();
              } else {
                _enableVideo();
              }
            },
            child: Container(
              height: 48.h,
              width: 48.w,
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff383838),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/video-camera-alt.png",
                  height: 32.h,
                  width: 32.w,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 48.h,
              width: 48.w,
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff383838),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/leaf.png",
                  height: 32.h,
                  width: 32.w,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 48.h,
              width: 48.w,
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff383838),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/comments.png",
                  height: 32.h,
                  width: 32.w,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              GetSettingsBottomSheet(context);
            },
            child: Container(
              height: 48.h,
              width: 48.w,
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff383838),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/menu-dots 3.png",
                  height: 32.h,
                  width: 32.w,
                ),
              ),
            ),
          ),
          /*    IconButton(
            onPressed: _unpublishAll,
            icon: const Icon(EvaIcons.closeCircleOutline),
            tooltip: 'Unpublish all',
          ), */
          /*  if (participant.isMicrophoneEnabled())
            IconButton(
              onPressed: _disableAudio,
              icon: const Icon(EvaIcons.mic),
              tooltip: 'mute audio',
            )
          else
            IconButton(
              onPressed: _enableAudio,
              icon: const Icon(EvaIcons.micOff),
              tooltip: 'un-mute audio',
            ), */
          /*   if (participant.isCameraEnabled())
            IconButton(
              onPressed: _disableVideo,
              icon: const Icon(EvaIcons.video),
              tooltip: 'mute video',
            )
          else
            IconButton(
              onPressed: _enableVideo,
              icon: const Icon(EvaIcons.videoOff),
              tooltip: 'un-mute video',
            ),
          IconButton(
            icon: Icon(position == CameraPosition.back ? EvaIcons.camera : EvaIcons.person),
            onPressed: () => _toggleCamera(),
            tooltip: 'toggle camera',
          ),
          if (participant.isScreenShareEnabled())
            IconButton(
              icon: const Icon(EvaIcons.monitorOutline),
              onPressed: () => _disableScreenShare(),
              tooltip: 'unshare screen (experimental)',
            )
          else
            IconButton(
              icon: const Icon(EvaIcons.monitor),
              onPressed: () => _enableScreenShare(),
              tooltip: 'share screen (experimental)',
            ),
          IconButton(
            onPressed: _onTapDisconnect,
            icon: const Icon(EvaIcons.closeCircle),
            tooltip: 'disconnect',
          ),
          IconButton(
            onPressed: _onTapSendData,
            icon: const Icon(EvaIcons.paperPlane),
            tooltip: 'send demo data',
          ),
          IconButton(
            onPressed: _onTapReconnect,
            icon: const Icon(EvaIcons.refresh),
            tooltip: 're-connect',
          ),
          IconButton(
            onPressed: _onTapUpdateSubscribePermission,
            icon: const Icon(EvaIcons.settings2),
            tooltip: 'Subscribe permission',
          ),
          IconButton(
            onPressed: _onTapSimulateScenario,
            icon: const Icon(EvaIcons.alertTriangle),
            tooltip: 'Simulate scenario',
          ), */
        ],
      ),
    );
  }

  GetSettingsBottomSheet(context) {
    showModalBottomSheet(
      backgroundColor: const Color(0xff171717),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.h),
      ),
      context: context,
      builder: (context) => SizedBox(
        height: 392.h,
        width: double.maxFinite,
        child: Padding(
          padding: REdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 4.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(
                      4.r,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const AudienceInteraction());
                },
                child: Row(
                  children: [
                    Text(
                      'Audience Interaction',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              GestureDetector(
                onTap: () {
                  share();
                },
                child: Row(
                  children: [
                    Text(
                      'Share',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      'Manage Co-Host',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      'View Rules',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              GestureDetector(
                onTap: () {
                  GetFeedbackBottomSheet();
                },
                child: Row(
                  children: [
                    Text(
                      'Share Feedback',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      'Report',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  GetFeedbackBottomSheet() {
    showModalBottomSheet(
      backgroundColor: const Color(0xff171717),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.h),
      ),
      context: context,
      builder: (context) => SizedBox(
        height: 392.h,
        width: double.maxFinite,
        child: Padding(
          padding: REdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: Column(
            children: [
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 4.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(
                      4.r,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/app_logo.png",
                          height: 34.h,
                          width: 80.w,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          'Let us know how it is going?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          'Share your feedback with us',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Weed 6.png",
                    height: 39.h,
                    width: 39.w,
                  ),
                  SizedBox(width: 15.w),
                  Image.asset(
                    "assets/images/Weed 6.png",
                    height: 39.h,
                    width: 39.w,
                  ),
                  SizedBox(width: 15.w),
                  Image.asset(
                    "assets/images/Weed 6.png",
                    height: 39.h,
                    width: 39.w,
                  ),
                  SizedBox(width: 15.w),
                  Image.asset(
                    "assets/images/Weed 6.png",
                    height: 39.h,
                    width: 39.w,
                  ),
                  SizedBox(width: 15.w),
                  Image.asset(
                    "assets/images/Weed 6.png",
                    height: 39.h,
                    width: 39.w,
                  ),
                ],
              ),
              const Spacer(),
              TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(
                      width: 1.w,
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                  hintText: 'Type a message',
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.4),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Spacer(),
              Text(
                'Submit',
                style: TextStyle(
                  color: const Color(0xffDAA930),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  void share() async {
    // await ShareIt.text(
    //   content:
    //       'https://play.google.com/store/apps/details?id=com.example.green_house_app',
    //   androidSheetTitle: 'Green House',
    // );

    Share.share(
      'https://play.google.com/store/apps/details?id=com.example.green_house_app',
      subject: 'Green House App',
    );
  }

  RulesBottomSheet() {
    showModalBottomSheet(
      backgroundColor: const Color(0xff171717),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.h),
      ),
      context: context,
      builder: (context) => SizedBox(
        height: 392.h,
        width: double.maxFinite,
        child: Padding(
          padding: REdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: Column(
            children: [
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 4.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(
                      4.r,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Rules',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.close,
                    size: 20.sp,
                    color: Colors.white,
                  )
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(shape: BoxShape.circle),
                          child: Center(
                            child: Text("1",
                                style: TextStyle(
                                  color: const Color(0xff32b66c),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Text(
                          'Share your feedback with us',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Spacer(),
              Divider(
                color: Colors.white.withOpacity(0.4),
              ),
              const Spacer(),
              Text(
                'Okay',
                style: TextStyle(
                  color: const Color(0xffDAA930),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
