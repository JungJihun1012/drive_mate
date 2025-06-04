import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  ButtonWidget({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: SizedBox(
        width: 400,
        height: 60,
        child: ElevatedButton(
            onPressed: () {
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade900,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                )
            ),
            child: Text(this.text, style: TextStyle(color: Colors.white, fontSize: 20),)),
      ),
    );
  }
}