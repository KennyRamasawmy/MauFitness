

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:MauFitness/Screens/Login/components/background.dart';
import 'package:MauFitness/Screens/Signup/signup_screen.dart';
import 'package:MauFitness/components/already_have_an_account_acheck.dart';
import 'package:MauFitness/components/rounded_button.dart';
import 'package:MauFitness/components/rounded_input_field.dart';
import 'package:MauFitness/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:MauFitness/screens/DashBoard.dart';


String email, password;

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/doitforlife.svg",
              height: size.height * 0.18,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                email = value.toString();
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                password = value.toString();
              },
            ),
            RoundedButton(
              text: "LOGIN",
              textColor: Color.fromARGB(255, 49, 46, 46),
              press: () {
                FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: email, password: password)
                    .then((value) {
                  print("login suceessfully...");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                  );
                }).onError((error, stackTrace) {
                  print("Try again...");

                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text('\u{1F6A8} Warning \u{1F6A8}',
                          textAlign: TextAlign.center),
                      content: const Text('Please try again!'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                });
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
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
