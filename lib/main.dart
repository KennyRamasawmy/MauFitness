import 'dart:async';

import 'package:MauFitness/Screens/Login/login_screen.dart';
import 'package:MauFitness/Splashscreen.dart';
import 'package:MauFitness/meditateHome.dart';
import 'package:MauFitness/screens/Cardio.dart';
import 'package:MauFitness/screens/DashBoard.dart';
import 'package:MauFitness/screens/Lower_body.dart';
import 'package:MauFitness/screens/Menu_Nutrition.dart';
import 'package:MauFitness/screens/Nutrition.dart';
import 'package:MauFitness/screens/Upper_body.dart';
import 'package:MauFitness/screens/workout_board.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:MauFitness/constants.dart';
import 'package:MauFitness/screens/Welcome/welcome_screen.dart';
import 'package:flutter/services.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersive,
  );

  await Firebase.initializeApp();
  runApp(MyApp());
}

Future signOut() async {
  try {
    return await FirebaseAuth.instance.signOut();
  } catch (e) {
    print(e.toString());
    return null;
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.indigo[50],
      ),
      home: SplashScreen(),
      initialRoute: '/',
      routes: {
        '/home': (context) => HomeScreen(),
        '/workout': (context) => WorkoutBoard(),
        '/upper': (context) => UpperBody(),
        '/lower': (context) => LowerBody(),
        '/cardio': (context) => Cardio(),
        '/nutrition': (context) => menu_nutrition(),
        '/meditation': (context) => mHomePage(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder<User>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              return LoginScreen();
            }),
      );
}