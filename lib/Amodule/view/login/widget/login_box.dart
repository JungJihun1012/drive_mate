import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class LoginBoxWidget extends StatelessWidget {
  final String text;
  final String icon;
  final double width;
  final double height;

  const LoginBoxWidget({super.key, required this.text, required this.icon, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.width,
      height: this.height,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
                children: [
                  SvgPicture.string(
                    icon,
                    height: 30,
                    colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                  ),
                  SizedBox(
                    width: 150,
                    height: double.infinity,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: text,
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none
                          )
                      ),
                    ),
                  )
                ]),
          ),
        )
    );
  }
}