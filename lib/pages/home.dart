import 'package:flutter/material.dart';
import 'package:testtask/services/color_service.dart';

/// This is one and only stateful widget which shows Text and random background.
class Home extends StatefulWidget {
  /// Home Page uses scaffold inside material widget and Inkwell
  /// is used as scaffold parent to make it interative as user clicks
  /// anywhere on the screen. ColorService class instance is created to call
  /// the generateColor method inside inkwell onTap method and setState used to
  /// to rebuild the widget on each click as the random color generated.
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color bgColor = Colors.deepPurple;
  ColorService generateColor = ColorService();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          setState(() {
            bgColor = generateColor.colorGenerator();
          });
        },
        child: SafeArea(
          child: Scaffold(
            backgroundColor: bgColor,
            body: const Center(
              child: Text(
                'Hello There!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
