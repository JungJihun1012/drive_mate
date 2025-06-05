import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectIndex extends StatefulWidget {

  final String icon;
  final String text;
  final String state;

  const SelectIndex({
    super.key,
    required this.icon,
    required this.text,
    required this.state
  });
  @override
  State<StatefulWidget> createState() => _IndexState();
}
class _IndexState extends State<SelectIndex> {
  late bool _isSelect;
  @override
  void initState() {
    super.initState();
    _isSelect = false;
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 20,
                    children: [
                      SvgPicture.string(this.widget.icon, height: 50, colorFilter: ColorFilter.mode(_isSelect ? Colors.brown.shade400 : Colors.black, BlendMode.srcIn),),
                      Text(this.widget.text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          _isSelect = !_isSelect;
                        });
                      },
                      child: Text( _isSelect ? '열림' : this.widget.state, style: TextStyle(fontSize: 20, color: _isSelect ? Colors.brown.shade400 : Colors.grey.shade900),)
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 430,
              height: 1,
              color: Colors.grey,
            )
          ],
        )
    );
  }
}