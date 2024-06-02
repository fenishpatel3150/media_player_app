

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:media_player_app/screen/model/color_gradient_list.dart';
import 'package:media_player_app/screen/provider/image_provider.dart';

import 'package:media_player_app/screen/view/componnets/carousel_slider.dart';
import 'package:provider/provider.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final imgtrue = Provider.of<image_provider>(context, listen: true);
    final imgfasle = Provider.of<image_provider>(context, listen: false);

    return Scaffold(

      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: gradiantList[imgtrue.index],
              ),
              child: carousel_slider(),
            ),
          ],
        ),
      ),
    );
  }

}