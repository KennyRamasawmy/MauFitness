import 'package:MauFitness/screens/TrophyLockUB.dart';
import 'package:flutter/material.dart';
import 'package:MauFitness/widgets/side_nav_bar.dart';
import 'package:MauFitness/widgets/trophy_button.dart';

class TrophyUnlockUB extends StatelessWidget {
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
              color: Color.fromARGB(255, 110, 171, 241),
            ),
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 70.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "CONGRATULATION \u{1F3C6} \n\n",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        color: Color.fromARGB(255, 212, 231, 248)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                  ),
                  Text(
                    "You completed the Challenge \u{1F38A} \u{1F389} \n\n ",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        color: Color.fromARGB(255, 188, 221, 249)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150.0),
                  ),
                  Text(
                    "Press to Unlock achievement \u{1F447}",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium.copyWith(
                        //fontWeight: FontWeight.w900,
                        fontSize: 24,
                        color: Color.fromARGB(255, 212, 231, 248)),
                  ),
                  //SearchBar(),

                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 2.2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 100,
                      children: <Widget>[
                        TrophyButton(
                          title: "Unlock \u{1F513}",
                          svgSrc: "assets/images/trophy-20",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return AchieveScreenLockUB();
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
