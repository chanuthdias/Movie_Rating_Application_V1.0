import 'package:flutter/material.dart';
import 'package:movie_rating_application/colors.dart';
import 'package:movie_rating_application/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flicker Play',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colours.scaffoldGbColor,
      ),
      home: const HomeScreen(),
    );
  }
}