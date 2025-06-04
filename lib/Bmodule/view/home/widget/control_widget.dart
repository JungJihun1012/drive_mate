import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ControlWidget extends StatelessWidget {
  final String icon;
  final String text;

  const ControlWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            spacing: 5,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 20,
                    children: [
                      SvgPicture.string(
                        this.icon,
                        height: 30,
                        colorFilter: ColorFilter.mode(
                          Colors.brown.shade400,
                          BlendMode.srcIn,
                        ),
                      ),
                      Text(
                        this.text,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  Icon(Icons.keyboard_arrow_right, size: 30, color: Colors.white),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 2,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade900
                    )
                ),
              ),
            ],
          ),
    );
  }
}
