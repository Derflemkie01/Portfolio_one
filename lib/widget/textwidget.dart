import 'package:flutter/material.dart';

// You can predefine some variables for convenience
FontWeight bold = FontWeight.bold;
TextAlign center = TextAlign.center;
TextAlign right = TextAlign.right;
TextAlign left = TextAlign.left;
bool softWrap = true;

// The 'textWidget' function
Widget textWidget(String text,
    {Color? color, double? size, FontWeight? weight, TextAlign? alignment, bool? warptext = true}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: weight,
    ),
    textAlign: alignment,
    softWrap: warptext,
  );
}
