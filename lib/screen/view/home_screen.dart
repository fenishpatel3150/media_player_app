import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 5,
      options: CarouselOptions(height: 400.0),
      itemBuilder: (BuildContext context, int index, int realIndex) => Text('2'),
    );
  }
}
