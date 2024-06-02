import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:media_player_app/screen/model/img_list.dart';
import 'package:media_player_app/screen/provider/image_provider.dart';
import 'package:provider/provider.dart';

class carousel_slider extends StatelessWidget {
  const carousel_slider({super.key});

  @override
  Widget build(BuildContext context) {
    final imgfasle=Provider.of<image_provider>(context,listen: false);
    return Container(
      height: 850,
        child: CarouselSlider(
          items: List.generate(imglist.length, (index) => Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
            ),
            margin: EdgeInsets.all(5.0),
            width: 350,
            child:Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(imglist[index]['image'],fit: BoxFit.cover,width: 1000,)),
                Padding(
                    padding: const EdgeInsets.only(top: 50,left: 20),
                    child: Text(imglist[index]['name'],style: TextStyle(color: Colors.white,fontSize: 16),)
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 100,left: 20),
                    child: Text(imglist[index]['description'],style: TextStyle(color: Colors.white,fontSize: 16),)
                ),

              ],
            ),
          )),
          options: CarouselOptions(
            initialPage: 0,
            autoPlay: true,
            height: 400,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 200),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) => imgfasle.color(index),
          ),
        ));
  }
}
