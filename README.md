
<h2 align = "center"> 1. Media Player </h2>


One of the popular packages for implementing carousels in Flutter is `carousel_slider`. Here’s a brief description of what this package offers:

### `carousel_slider` Package

The `carousel_slider` package provides a versatile and easy-to-use carousel widget for Flutter applications. It allows developers to create carousels that can display images, texts, or any other type of widgets. The package includes features such as:

- **Infinite Scrolling**: Carousels can loop infinitely.
- **Auto Play**: Carousels can automatically slide after a set duration.
- **Customizable Indicators**: Developers can customize the appearance and behavior of the indicators.
- **Swipe Gesture**: Users can swipe to navigate through items.
- **Custom Animations**: Transitions between slides can be customized with different animations.
- **Responsive Layout**: The carousel adjusts to different screen sizes and orientations.

### Example Code

Here's a simple example of how to use the `carousel_slider` package in a Flutter project:

```dart
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Carousel Slider Example')),
        body: CarouselDemo(),
      ),
    );
  }
}

class CarouselDemo extends StatelessWidget {
  final List<String> imgList = [
    'https://via.placeholder.com/600x400',
    'https://via.placeholder.com/600x400',
    'https://via.placeholder.com/600x400',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400.0,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16/9,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
      ),
      items: imgList.map((item) => Container(
        child: Center(
          child: Image.network(item, fit: BoxFit.cover, width: 1000)
        ),
      )).toList(),
    );
  }
}
```

### Key Features

- **Height and Width Customization**: Adjust the dimensions of the carousel.
- **Auto Play Control**: Enable or disable automatic sliding.
- **Infinite Scroll**: Enable or disable infinite loop scrolling.
- **Animation Customization**: Customize the transition animations.
- **Item Builder**: Use a builder function to create each item dynamically.

### Conclusion

The `carousel_slider` package is a powerful tool for adding carousels to Flutter applications, providing a range of customization options to fit different needs and styles. Whether displaying images, text, or custom widgets, this package offers flexibility and ease of use.

<img src = "https://github.com/fenishpatel3150/media_player_app/assets/143187609/4f48a591-b4b8-4ab0-aacc-73a50f97995f" width=22% height=35%>
<img src = "https://github.com/fenishpatel3150/media_player_app/assets/143187609/80ecb113-20f8-4739-b7ad-c430b2e344b3" width=22% height=35%>
<img src = "https://github.com/fenishpatel3150/media_player_app/assets/143187609/8980bcf4-9d2b-451f-81ad-00a5c65b9c73" width=22% height=35%>


https://github.com/fenishpatel3150/media_player_app/assets/143187609/d657e9ce-0000-4a2f-af13-c73e5ef7b3b3








