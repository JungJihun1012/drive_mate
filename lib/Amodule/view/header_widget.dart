import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderWidget extends StatelessWidget {
  final String headerIcon;
  HeaderWidget({super.key, required this.headerIcon});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        SvgPicture.string(
          headerIcon,
          height: 60,
          colorFilter: ColorFilter.mode(
            Colors.brown.shade400,
            BlendMode.srcIn,
          ),
        ),
        Text(
          'Drive Mate',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}