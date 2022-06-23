import 'package:flutter/material.dart';
import 'package:MauFitness/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don’t have an Account ? " : "Already have an Account ? ",
          style: TextStyle(color: Color.fromARGB(255, 74, 107, 131)),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Register" : "Sign In",
            style: TextStyle(
              color: Color.fromARGB(255, 74, 107, 131),
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}