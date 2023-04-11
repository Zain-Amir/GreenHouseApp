import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livekit_client/livekit_client.dart';

class ParticipantInfoWidget extends StatelessWidget {
  //
  final String? title;
  final bool audioAvailable;
  final ConnectionQuality connectionQuality;

  const ParticipantInfoWidget({
    this.title,
    this.audioAvailable = true,
    this.connectionQuality = ConnectionQuality.unknown,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(
          vertical: 25.h,
          horizontal: 20.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (title != null)
              Flexible(
                child: Text(
                  title!,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: const Color(0xff32B66C),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Image.asset(
                    audioAvailable ? "assets/images/mic.png" : "assets/images/mute.png",
                    color: const Color(0xffD19E22),
                    height: 20.h,
                    width: 20.w,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Image.asset(
                    "assets/images/video-camera-alt.png",
                    color: const Color(0xffD19E22),
                    height: 20.h,
                    width: 20.w,
                  ),
                ),
              ],
            ),
            /*  if (connectionQuality != ConnectionQuality.unknown)
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Icon(
                  connectionQuality == ConnectionQuality.poor ? Icons.wifi : Icons.wifi_off,
                  color: {
                    ConnectionQuality.excellent: Colors.green,
                    ConnectionQuality.good: Colors.orange,
                    ConnectionQuality.poor: Colors.red,
                  }[connectionQuality],
                  size: 16,
                ),
              ), */
          ],
        ),
      );
}
