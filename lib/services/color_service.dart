import 'dart:math';

import 'package:flutter/material.dart';

///This is the color service class which will generate random colors.
class ColorService {
  ///This method will Generate random colors for Home background.
  Color colorGenerator() {
    final Random random = Random();

    final int red = random.nextInt(255);
    final int green = random.nextInt(255);
    final int blue = random.nextInt(255);

    final Color randomColor = Color.fromARGB(255, red, green, blue);

    return randomColor;
  }
}
