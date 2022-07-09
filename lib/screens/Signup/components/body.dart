import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:MauFitness/Screens/Login/login_screen.dart';
import 'package:MauFitness/Screens/Signup/components/background.dart';
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
           
            Image.asset(
              "assets/images/maufitness.png",
              height: size.height * 0.25,
            ),
            RoundedInputField(
              hintText: "Enter your Email",
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
              text: "REGISTER ME",
              textColor: Color.fromARGB(255, 49, 46, 46),
              press: () {
                FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                        email: email, password: password)
                    .then((value) {
                  print("New account created.");
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
                      title: Text('Warning',
                          textAlign: TextAlign.center),
                      content: const Text('Please try again!', textAlign: TextAlign.center),
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
              login: false,
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
          ],
        ),
      ),
    );
  }
}
