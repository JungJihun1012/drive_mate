import 'dart:async';

import 'package:dirve_mate/Bmodule/view/home/widget/home_page_stack.dart';
import 'package:dirve_mate/Bmodule/view/home/widget/home_page_title_widget.dart';
import 'package:dirve_mate/Bmodule/view/home/widget/weather_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
const String location = ''' <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 8c-2.21 0-4 1.79-4 4s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm8.94 3c-.46-4.17-3.77-7.48-7.94-7.94V1h-2v2.06C6.83 3.52 3.52 6.83 3.06 11H1v2h2.06c.46 4.17 3.77 7.48 7.94 7.94V23h2v-2.06c4.17-.46 7.48-3.77 7.94-7.94H23v-2h-2.06zM12 19c-3.87 0-7-3.13-7-7s3.13-7 7-7 7 3.13 7 7-3.13 7-7 7z"/></svg> ''';

class HomePageInfoWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TimerState();
}

class _TimerState extends State<HomePageInfoWidget> {
  Timer? timer;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {});
  }
  @override
  void dispose() {
    super.dispose();
    if(timer == null) {
      timer!.cancel();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                  colors: [Colors.grey, Colors.transparent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                stops: [0.5, 1]
              ).createShader(bounds);
            },
          child: Image(image: AssetImage('assets/images/cloud2.png'), colorBlendMode: BlendMode.srcOut, color: Colors.grey, ),
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomePageTitle(),
                  HomeStack()
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  WeatherInfo(),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 20), child: Row(
                    spacing: 10,
                    children: [
                      SvgPicture.string(location, height: 30,),
                      Text('경상북도 경주시'),
                    ],
                  ),),
                  SizedBox(height: 70,),
                  Image(image: AssetImage('assets/images/cars/q7.png'), height: 200,)
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}