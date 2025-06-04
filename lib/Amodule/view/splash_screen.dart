import 'dart:async';

import 'package:dirve_mate/Amodule/view/animated/init_animation.dart';
import 'package:dirve_mate/Amodule/view/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 2),
  )..repeat(reverse: true);
  late final Animation<AlignmentGeometry> _animation = Tween<AlignmentGeometry>(
    begin: Alignment.bottomRight,
    end: Alignment.center,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.decelerate));
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
        () => Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        spacing: 20,
        children: [
          SizedBox(height: 40,),
          InitAnimation(),
          AlignTransition(
              alignment: _animation,
              child: Text('Drive Mate', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),)
          ),
          AlignTransition(
              alignment: _animation,
              child: Text('연결하고, 운전하고, 즐기세요', style: TextStyle(fontSize: 20  , color: Colors.white),),
          ),
          AlignTransition(
              alignment: _animation,
              child: Image(image: AssetImage('assets/images/car.png'))
          )

        ],
      ),
    );
  }
}