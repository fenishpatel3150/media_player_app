import 'package:flutter/material.dart';
import 'package:media_player_app/screen/videoplayer/model/video_list.dart';
import 'package:media_player_app/screen/videoplayer/view/componets/video_card.dart';
import 'package:video_player/video_player.dart';

class Video_player extends StatefulWidget {
  const Video_player({super.key});

  @override
  State<Video_player> createState() => _Video_playerState();
}


class _Video_playerState extends State<Video_player> {

  late PageController _pageController;

  int _selectedIndex=0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height*0.7,
            child: PageView.builder(
              itemCount: video.length,
                controller: _pageController,
                itemBuilder: (context,index){
              return  VideoCard(assetPath: video[index],isSelected: _selectedIndex==index);
            },
              onPageChanged: (i)
              {
                setState(() {
                  _selectedIndex=i;
                });
              },
            ),
          ),
        ],
      ),

    );
  }
}






