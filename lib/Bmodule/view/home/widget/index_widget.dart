import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IndexWidget extends StatefulWidget {
  final double left;
  final double top;
  final double rotate;
  final String icon;
  final String text;
  final String subText;

  const IndexWidget({
    super.key,
    required this.left,
    required this.top,
    required this.icon,
    required this.text,
    required this.subText,
    required this.rotate
  });

  @override
  State<StatefulWidget> createState() => _IndexState();
}
class _IndexState extends State<IndexWidget> {
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
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 70,
                        child: Stack(
                          children: [
                            Positioned(
                              left: this.widget.left,
                              top: this.widget.top,
                              child: SvgPicture.asset('assets/BmoduleIcon/heat.svg', height: 20, colorFilter: ColorFilter.mode(_isSelect ? Colors.red : Colors.black, BlendMode.srcIn),),
                            ),
                            Center(
                              child: RotationTransition(
                                turns: AlwaysStoppedAnimation(this.widget.rotate),
                                child: SvgPicture.asset(this.widget.icon, height: 35, colorFilter: ColorFilter.mode(_isSelect ? Colors.brown.shade400 : Colors.black, BlendMode.srcIn),),
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(this.widget.text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 10),
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            _isSelect = !_isSelect;
                          });
                        },
                        child: Text(_isSelect ? '켜짐':this.widget.subText , style: TextStyle(fontSize: 20, color: _isSelect ?  Colors.brown.shade400:Colors.grey.shade900),)
                    ),
                  )
                ],
              ),
            ),
            // SizedBox(height: 20,),
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