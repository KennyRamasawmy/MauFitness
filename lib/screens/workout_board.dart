import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:MauFitness/screens/Cardio.dart';
import 'package:MauFitness/screens/Lower_body.dart';
import 'package:MauFitness/screens/Upper_body.dart';
import 'package:MauFitness/widgets/workoutcategory_card.dart';
import 'package:MauFitness/widgets/search_bar.dart';
import 'package:MauFitness/widgets/side_nav_bar.dart';

class WorkoutBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      endDrawer: NavDrawer(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 171, 170, 216),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment(1.30, 1.5),
                    child: Container(
                      width: 70.0,
                      height: 60.0,
                      child: Image.asset(
                        "assets/images/hamburger.png",
                      width: size.width,
                    ),
                    ),
                  ),
                  Text(
                    "Workout",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "For your health!",
                    style: TextStyle(
                        color: Color.fromARGB(255, 85, 71, 148),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  //SearchBar(),
                  new Container(
                  height: 50,
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 2.2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "  Upper Body",
                          image: "assets/images/upperbody1.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return UpperBody();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Lower Body",
                          image: "assets/images/lowerbody1.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return LowerBody();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "        Cardio",
                          image: "assets/images/cardio1.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Cardio();
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
