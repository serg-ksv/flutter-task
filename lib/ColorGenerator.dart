import 'package:flutter/material.dart';
import 'dart:math';

class ColorGenerator {
  static generateColor() {
    var random = Random();
    return Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }
}
