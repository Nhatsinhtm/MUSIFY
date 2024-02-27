import 'package:flutter/material.dart';
import 'package:musifyflutter/Pages/play_music.dart';
import 'package:musifyflutter/loading.dart';
import 'package:musifyflutter/navigation_bar.dart';
import 'package:on_audio_query/on_audio_query.dart';




void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtonNavBar(),
      routes: {
        '/loadingpage': (context) => Loading(),

      },
    );
  }
}



