import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderWidget extends StatelessWidget {
  final double height;
  final String headerIcon;
  final double fontSize;
  HeaderWidget({super.key, required this.headerIcon, required this.height, required this.fontSize});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        SvgPicture.string(
          headerIcon,
          height: this.height,
          colorFilter: ColorFilter.mode(
            Colors.brown.shade400,
            BlendMode.srcIn,
          ),
        ),
        Text(
          'Drive Mate',
          style: TextStyle(
            fontSize: this.fontSize,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}