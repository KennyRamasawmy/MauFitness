import 'package:MauFitness/screens/Nutrition.dart';
import 'package:MauFitness/screens/filters_page.dart';
import 'package:MauFitness/screens/tips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:MauFitness/screens/Cardio.dart';
import 'package:MauFitness/screens/Lower_body.dart';
import 'package:MauFitness/screens/Upper_body.dart';
import 'package:MauFitness/widgets/nutritioncategory_card.dart';
import 'package:MauFitness/widgets/search_bar.dart';
import 'package:MauFitness/widgets/side_nav_bar.dart';

class menu_nutrition extends StatelessWidget {
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
              color: Color.fromARGB(255, 255, 255, 255),
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
                        "assets/images/hamburgergreen.png",
                        width: size.width,
                      ),
                    ),
                  ),
                  Text(
                    "Nutriton",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "For a Happy and Healthy Life",
                    style: TextStyle(
                        color: Color.fromARGB(255, 45, 114, 103),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  //SearchBar(),
                  new Container(
                    height: 100,
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 2.2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 100,
                      children: <Widget>[
                        CategoryCard(
                          title: "Healthy Meals",
                          image: "assets/images/healthymeals.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Nutrition();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Nutrition Tips",
                          image: "assets/images/healthytips.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return tipping();
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
