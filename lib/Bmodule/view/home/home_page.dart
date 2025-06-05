import 'package:dirve_mate/Amodule/view/login/login.dart';
import 'package:dirve_mate/Bmodule/view/home/index.dart';
import 'package:dirve_mate/Bmodule/view/home/widget/control_widget.dart';
import 'package:dirve_mate/Bmodule/view/home/widget/home_page_index.dart';
import 'package:dirve_mate/Bmodule/view/home/widget/home_page_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectIndex,
        children: [
          SingleChildScrollView(
            child: Column(
                children: [
                  HomePageInfoWidget(),
                  HomePageIndex()
                ]
            ),
          ),
          SizedBox(width: double.infinity, height: double.infinity, child: DecoratedBox(decoration: BoxDecoration(color: Colors.red)),),
          Index(),
          SizedBox(width: double.infinity, height: double.infinity, child: DecoratedBox(decoration: BoxDecoration(color: Colors.red)),),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey, width: 2), right: BorderSide(color: Colors.grey, width: 2), left: BorderSide(color: Colors.grey, width: 2)),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          ),
        ),
        child: BottomNavigationBar(
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          iconSize: 35,
          selectedItemColor: Colors.brown.shade400,
          unselectedItemColor: Colors.grey,
          currentIndex: selectIndex,
          onTap: (value) {
            setState(() {
              selectIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.control_camera),
              label: 'Control',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_car_filled_outlined),
              label: 'Status',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.share_outlined),
              label: 'Share',
            ),
          ],
        ),
      ),
    );
  }
}
