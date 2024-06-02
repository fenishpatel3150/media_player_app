import 'package:flutter/material.dart';
import 'package:media_player_app/screen/videoplayer/view/home_screen.dart';
import 'package:provider/provider.dart';

import 'screen/mediaplayer/provider/image_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => image_provider(),)
  ],
    child: const MyApp(),
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       routes:
       {
        //  '/':(context)=> Home_Screen(),
         '/':(context) =>const Video_player(),
      },
    );
  }
}

