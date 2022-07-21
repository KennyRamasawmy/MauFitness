import 'package:MauFitness/screens/EctomorphNutritionTipsScreen.dart';
import 'package:MauFitness/screens/EndomorphNutritionTipsScreen.dart';
import 'package:MauFitness/screens/Menu_Nutrition.dart';
import 'package:MauFitness/screens/tilt_bmi.dart';

import 'package:MauFitness/widgets/side_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:MauFitness/widgets/tipppss.dart';

import 'MesomorphNutritionTipsScreen.dart';

class tipping extends StatelessWidget {
  static const routeName = '/about-us';
  @override
  Widget build(BuildContext context) {
    /*var size = MediaQuery.of(context)
        .size; */ //this gonna give us total height and with of our device

    return Scaffold(
      endDrawer: NavDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text("Nutrition Tips",
            style: TextStyle(
                fontSize: 27,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w700)),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0), size: 40),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 1500,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 55,
                    ),
                  ),
                  Text(" Choose your body type",
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("ECTOMORPH",
                              style: TextStyle(
                                  fontSize: 27,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w700)),
                        ),
                        width: 1200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage("assets/images/ectomorph.jpg"),
                              fit: BoxFit.cover),
                        )),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          //return menu_nutrition();
                          return EctoNutritionTipsScreen();
                        }),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("ENDOMORPH",
                              style: TextStyle(
                                  fontSize: 27,
                                  color: Color.fromARGB(255, 254, 255, 254),
                                  fontWeight: FontWeight.w700)),
                        ),
                        width: 1200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage("assets/images/endomorph.jpg"),
                              fit: BoxFit.cover),
                        )),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return EndoNutritionTipsScreen();
                        }),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("MESOMORPH",
                              style: TextStyle(
                                  fontSize: 27,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w700)),
                        ), // button text
                        width: 1200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage("assets/images/mesomorph.jpg"),
                              fit: BoxFit.cover),
                        )),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          //return SpeechScreen();
                          return MesoNutritionTipsScreen();
                        }),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
