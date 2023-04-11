import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectedNavItem extends StatelessWidget {
  final String pngPath;
  final bool isSvg;
  final double? height, width;

  const SelectedNavItem(
      {Key? key,
      required this.pngPath,
      this.height,
      this.width,
      this.isSvg = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: height ?? 35,
          width: width ?? 35,
          child:  SvgPicture.asset(
                  pngPath,
                ),
        ),
      ],
    );
  }
}
