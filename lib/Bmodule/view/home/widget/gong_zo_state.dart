import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GongZo extends StatefulWidget {
  final double positionLeft;
  final double positionRight;
  final double positionBottom;
  final double positionTop;
  final String icon;
  final String text;
  final String subText;
  final String heatIcon;

  const GongZo({
    super.key,
    required this.positionLeft,
    required this.positionRight,
    required this.positionBottom,
    required this.positionTop,
    required this.icon,
    required this.heatIcon,
    required this.text,
    required this.subText
  });
  @override
  State<StatefulWidget> createState() => _GongZoState();
}

class _GongZoState extends State<GongZo> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 40, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    spacing: 20,
                    children: [
                      Stack(
                          children: [
                            Positioned(
                              left: this.widget.positionLeft,
                              top: this.widget.positionTop,
                              bottom: this.widget.positionBottom,
                              right: this.widget.positionRight,
                              child: SvgPicture.string(this.widget.heatIcon, height: 10,),
                            ),
                            Center(
                              child: SvgPicture.string(this.widget.icon, height: 40, ),
                            )
                          ],
                        ),
                      Text(this.widget.text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Text(this.widget.subText, style: TextStyle(fontSize: 20, color: Colors.grey.shade900),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 430,
              height: 1,
              color: Colors.grey,
            )
          ],
        )
    );
  }
}