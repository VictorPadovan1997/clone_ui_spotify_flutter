import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/screen/bottom_navigator_bar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone',
      theme: ThemeData.dark(),
      home: BottomNavigatorBarPage(),
    );
  }
}
