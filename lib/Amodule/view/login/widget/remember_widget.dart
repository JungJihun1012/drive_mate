import 'package:dirve_mate/Amodule/view/login/widget/cupertino_switch_button.dart';
import 'package:flutter/material.dart';

class RememberWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, left: 40),
      child: Row(
        spacing: 20,
        children: [
          CupertinoSwitchButton(),
          Text('Remember', style: TextStyle(color: Colors.white, fontSize: 20),)
        ],
      ),
    );
  }
}