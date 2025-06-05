import 'package:flutter/material.dart';

class ImageSlide extends StatefulWidget {
  const ImageSlide({super.key});

  @override
  State<StatefulWidget> createState() => _SlideState();
}

class _SlideState extends State<ImageSlide> {
  final PageController _controller = PageController(initialPage: 0);
  int index = 0;
  final List<String> _imagePath = [
    'assets/images/red_car.png',
    'assets/images/cars/a8.png',
  ];

  // _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500))

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {
            index--;
            index = index % 2;

            setState(() {
              _controller.animateToPage(
                index,
                duration: Duration(milliseconds: 1000),
                curve: Curves.ease,
              );
            });
          },
          icon: Icon(Icons.keyboard_arrow_left, size: 50, color: Colors.white),
        ),
        Container(
          width: 300,
          height: 200,
          child: PageView(
            controller: _controller,

            children: [
              for(int i = 0; i < _imagePath.length; i++)
              Image(
                  image: AssetImage(_imagePath[i]),
                  width: 200,
                  fit: BoxFit.fitWidth,
              )
              ,
            ],
          ),
        ),
        IconButton(
          onPressed: () {
            index++;

            setState(() {
              _controller.animateToPage(
                index,
                duration: Duration(milliseconds: 1000),
                curve: Curves.ease,
              );
            });
          },
          icon: Icon(Icons.keyboard_arrow_right, size: 50, color: Colors.white),
        ),
      ],
    );
  }
}
