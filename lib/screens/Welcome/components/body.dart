import 'package:flutter/material.dart';
import 'package:MauFitness/Screens/Login/login_screen.dart';
import 'package:MauFitness/Screens/Signup/signup_screen.dart';
import 'package:MauFitness/Screens/Welcome/components/background.dart';
import 'package:MauFitness/components/rounded_button.dart';
import 'package:MauFitness/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            SvgPicture.asset(
              "assets/icons/fitnesslogoMAUVE.svg",
              height: size.height * 0.40,
            ),

            Image.asset(
              'assets/images/welcome1.png'
              
            ),

            SizedBox(
              height: 90.0,
            ),

            RoundedButton(
              text: "LOG IN",
              textColor: Color.fromARGB(255, 47, 48, 48),
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "REGISTER",
              color: kPrimaryLightColor,
              textColor: Color.fromARGB(255, 48, 56, 59),
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
