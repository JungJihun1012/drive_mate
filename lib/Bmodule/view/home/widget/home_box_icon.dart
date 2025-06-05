import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBoxIcon extends StatefulWidget {
  final String text;
  final String icon;
  final Color iconColor;
  final String selectedIcon;
  final Color selectedIconColor;
  final bool useFlashed;

  const HomeBoxIcon({
    super.key,
    required this.text,
    required this.icon,
    required this.iconColor,
    required this.selectedIcon,
    required this.selectedIconColor,
    this.useFlashed = false
  });

  @override
  State<StatefulWidget> createState() => _IconState();
}

class _IconState extends State<HomeBoxIcon> {
  bool _isSelect = false;
  late String icon;
  late Color iconColor;
  late Color backgroundColor;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _isSelect = false;
    icon = widget.icon;
    iconColor = widget.iconColor;
    backgroundColor = Colors.white;
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        SizedBox(
          width: 90,
          height: 90,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius:BorderRadius.circular(10),
              border: Border.all(color: Colors.grey, width: 2)
            ),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    _isSelect = !_isSelect;
                  });
                  if (_isSelect && widget.useFlashed) {
                    _timer = Timer.periodic(Duration(milliseconds: 1000), (timer) {
                      setState(() {
                        iconColor == widget.selectedIconColor ? iconColor = Colors.white : iconColor = widget.selectedIconColor;
                      });
                    });
                  } else {
                    _timer?.cancel();
                  }

                  setState(() {
                    if(_isSelect) {
                      icon = widget.selectedIcon;
                      if(!widget.useFlashed) {
                        iconColor = widget.selectedIconColor;
                      } else {
                        iconColor = Colors.white;
                      }
                      backgroundColor = Colors.black;
                    } else {
                      icon = widget.icon;
                      iconColor = widget.iconColor;
                      backgroundColor = Colors.white;
                    }
                  });
                },
                icon: SvgPicture.asset(
                  icon,
                  height: 60,
                  colorFilter: ColorFilter.mode(
                      iconColor,
                      BlendMode.srcIn
                  ),
                )
            ),
          ),
        ),
        Text(widget.text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
      ],
    );
  }
}