import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CupertinoSwitchButtonState();
}

class _CupertinoSwitchButtonState extends State<CupertinoSwitchButton> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
        value: _isSelected,
        activeColor: Colors.brown.shade300,
        onChanged: (value) {
          setState(() {
            _isSelected = value;
          });
        },
    );
  }
}