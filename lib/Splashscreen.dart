import 'package:flutter/material.dart';
import 'package:MauFitness/screens/Welcome/welcome_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Workout',
              body: 'Maufitness will help you acheive your fitness goal!',
              image: buildImage('assets/images/cardio1.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Nutrition',
              body: 'The best meals available at your fingertips!',
              image: buildImage('assets/images/nutrition1.png'),
              decoration: getPageDecoration1(),
            ),
            PageViewModel(
              title: 'Meditation',
              body: 'Being healthy is also having a stressfree life!',
              image: buildImage('assets/images/meditation1.png'),
              decoration: getPageDecoration2(),
            ),
          ],
          done: Text('Continue', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('Skip', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
          //onSkip: () => goToHome(context),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Color.fromARGB(255, 180, 170, 228),
          skipFlex: 0,
          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) {
          return WelcomeScreen();
        }),
      );

  Widget buildImage(String path) =>

      Center(child: Image.asset(path,height: 450, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color.fromARGB(255, 255, 255, 255),
        activeColor: Color.fromARGB(255, 0, 0, 0),
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titlePadding: EdgeInsets.only(top: 50),
        titleTextStyle: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 22),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.only(top: 100),
        pageColor:  Color.fromARGB(255, 255, 158, 113),
  );
  PageDecoration getPageDecoration1() => PageDecoration(
        titlePadding: EdgeInsets.only(top: 50),
        titleTextStyle: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 22),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.only(top: 100),
        pageColor:  Color.fromARGB(255, 170, 255, 159),
  );
  PageDecoration getPageDecoration2() => PageDecoration(
        titlePadding: EdgeInsets.only(top: 50),
        titleTextStyle: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 22),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.only(top: 100),
        pageColor:  Color.fromARGB(255, 222, 217, 248),
  );
}