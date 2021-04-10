import 'package:flutter/material.dart';
import 'package:dicoding_movie_flutter/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies',
      theme: ThemeData.light(),
      home: MainScreen(),
    );
  }
}
