import 'package:flutter/material.dart';

const Color backgroundColor = Color(0xA6705CFE);
const Color textColor = Color.fromARGB(166, 26, 0, 222);
const gradientColor = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    backgroundColor,
    textColor,
  ],
);
double deviceWidth = 0;
double deviceHeight = 0;
