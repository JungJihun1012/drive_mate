import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SlideWidget extends StatefulWidget {
  const SlideWidget({super.key});

  @override
  State<StatefulWidget> createState() => _SlideState();
}

class _SlideState extends State<SlideWidget> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();
  List imageList = [
    "assets/images/car.png",
    "assets/images/front-car.webp",
    "assets/images/red_car.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: Stack(
                children: [
                  slider(),
                  sliderButton()
                ]
            ),
          ),
        ],
      ),
    );
  }

  Widget slider() {
    return CarouselSlider(
      carouselController: _controller,
      items:
          imageList.map((imgLink) {
            return Builder(
              builder: (context) {
                return SizedBox(
                  child: Image(fit: BoxFit.fill, image: AssetImage(imgLink), height: 100,),
                );
              },
            );
          }).toList(),
      options: CarouselOptions(
        height: 300,
        viewportFraction: 1.0,
        autoPlay: false,
        onPageChanged: (index, reason) {
          setState(() {
            _current = index;
          });
        },
      ),
    );
  }

  Widget sliderButton() {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                _controller.previousPage();
              });
            },
            icon: Icon(Icons.keyboard_arrow_left),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _controller.nextPage();
              });
            },
            icon: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }
}
