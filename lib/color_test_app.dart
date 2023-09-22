import 'package:flutter/material.dart';
import 'package:testtask/home.dart';

///This is the starting point of our app
class ColorTestApp extends StatelessWidget {
  /// This widget wrapps the home as it is the starting point of our app for
  /// with Material app and defines themes routes etc.
  const ColorTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
