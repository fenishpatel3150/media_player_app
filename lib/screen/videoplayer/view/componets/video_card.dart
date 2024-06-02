import 'package:flutter/material.dart';
import 'package:media_player_app/screen/videoplayer/view/componets/parallax_flow_delegate_screen.dart';
import 'package:video_player/video_player.dart';

class VideoCard extends StatefulWidget {
  const VideoCard(
      {super.key, required this.assetPath, required this.isSelected});

  final String assetPath;
  final bool isSelected;

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  late VideoPlayerController _controller;
  final GlobalKey _videoKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.assetPath);
    _controller
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..setVolume(0)
      ..initialize().then((value) => setState(() {}))
      ..play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: widget.isSelected
          ? EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 4,
            )
          : EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: Offset(0,6),
              blurRadius: 8,
            )
          ]),
      duration: Duration(microseconds: 250),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Flow(
            delegate: ParallaxFlowDelegate(
                scrollable: Scrollable.of(context),
                listItemContext: context,
                backgroundImageKey:_videoKey ),
            children: [
              AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller,
                key: _videoKey,
                ),
              ),
            ]),
      ),
    );
  }
}
