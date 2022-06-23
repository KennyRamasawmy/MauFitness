import 'package:flutter/material.dart';

class Style {
  static final baseTextStyle = const TextStyle(fontFamily: 'Poppins');
  static final smallTextStyle = commonTextStyle.copyWith(
    fontSize: 13.0,
  );
  static final commonTextStyle = baseTextStyle.copyWith(
      color: Color.fromARGB(255, 206, 202, 253),
      fontSize: 15.0,
      fontWeight: FontWeight.w400);

  static final commonTextStyle1 = baseTextStyle.copyWith(
    color: Color.fromARGB(255, 37, 35, 53),
    fontSize: 15.0,
    fontWeight: FontWeight.bold,
  );

  static final titleTextStyle =
      baseTextStyle.copyWith(color: Colors.white, fontSize: 19.0);
  static final headerTextStyle =
      baseTextStyle.copyWith(color: Colors.white, fontSize: 20.0);

  static final headerTextStyle1 = baseTextStyle.copyWith(
      color: Color.fromARGB(255, 56, 56, 56), fontSize: 20.0);
}
