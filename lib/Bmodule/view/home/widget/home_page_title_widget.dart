import 'package:flutter/material.dart';

class HomePageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Q8', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
        Icon(Icons.keyboard_arrow_right, size: 30,)
      ],
    );
  }
}