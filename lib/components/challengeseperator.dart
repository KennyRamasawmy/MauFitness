import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: new EdgeInsets.symmetric(vertical: 8.0),
        height: 4.0,
        width: 30.0,
        color: Color.fromARGB(255, 112, 214, 240));
  }
}
