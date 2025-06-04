import 'package:dirve_mate/Amodule/view/login/login.dart';
import 'package:dirve_mate/Bmodule/view/home/widget/control_widget.dart';
import 'package:dirve_mate/Bmodule/view/home/widget/home_page_index.dart';
import 'package:dirve_mate/Bmodule/view/home/widget/home_page_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomePageInfoWidget(),
          HomePageIndex(),
        ],
      ),
    );
  }
}
