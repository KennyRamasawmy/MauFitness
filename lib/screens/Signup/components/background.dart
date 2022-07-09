import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      // Here i can use size.width but use double.infinity because both work as a same
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: -150,
            left: -190,
            child: Image.asset(
              "assets/images/welcome1.png",
              width: size.width,
            ),
          ),
          Positioned(
            top: 150,
            right: -100,
            child: Image.asset(
              "assets/images/welcome2.png",
              width: size.width,
            ),
          ),
          Positioned(
            bottom: -50,
            left: -100,
            child: Image.asset(
              "assets/images/welcome3.png",
              width: size.width,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
