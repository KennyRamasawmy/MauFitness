import 'package:MauFitness/components/next_step.dart';
import 'package:MauFitness/models/exercise.dart';
import 'package:flutter/material.dart';
import 'package:MauFitness/pages/activityTimerLowA.dart';
import 'package:MauFitness/pages/activityTimerLowB.dart';
import 'package:MauFitness/pages/activityTimerLowG.dart';

class ActivityDetail extends StatelessWidget {
  final String tag;
  final Exercise exercise;

  ActivityDetail({
    @required this.exercise,
    @required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: this.tag,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 270,
                    child: Image.asset(
                      this.exercise.image,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 20,
                  child: GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(177, 145, 127, 127),
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(232, 234, 246, 1)),
                  padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        this.exercise.title,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Color.fromARGB(255, 68, 95, 112),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        height: 90.0,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 196, 198, 207),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 55.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Time',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color.fromARGB(255, 26, 52, 66)),
                                  ),
                                  Text(
                                    '${this.exercise.time}',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        color: Color.fromARGB(255, 32, 70, 88),
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 45.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Intensity',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Color.fromARGB(255, 56, 80, 92),
                                    ),
                                  ),
                                  Text(
                                    this.exercise.difficult,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Color.fromARGB(255, 36, 79, 99),
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            if (this.exercise.title == "Alpha") ...[
                              NextStep(
                                image: 'assets/images/highknees.jpg',
                                title: 'High Knees',
                                minutes: 2,
                              ),
                              NextStep(
                                image: 'assets/images/curtsylunger.jpg',
                                title:
                                    'Curtsy Lunge to reverse lunge\nto hop (right)',
                                minutes: 2,
                              ),
                              NextStep(
                                image: 'assets/images/curtsylunge.jpg',
                                title:
                                    'Curtsy Lunge to reverse lunge\nto hop (left)',
                                minutes: 2,
                              ),
                              NextStep(
                                image: 'assets/images/flutterkick.jpg',
                                title: 'Flutter Kick',
                                minutes: 2,
                              ),
                              NextStep(
                                image: 'assets/images/skatehops.jpg',
                                title: 'Skates Hops',
                                minutes: 2,
                              ),
                            ] else if (this.exercise.title == "Beta") ...[
                              NextStep(
                                image: 'assets/images/FireHydrant.png',
                                title: 'Fire Hydrant',
                                minutes: 5,
                              ),
                              NextStep(
                                image: 'assets/images/squat.jpg',
                                title: 'Narrow Squat',
                                minutes: 5,
                              ),
                              NextStep(
                                image: 'assets/images/pilatesswim.jpg',
                                title: 'Pilates Swimming',
                                minutes: 5,
                              ),
                              NextStep(
                                image: 'assets/images/wallsit.jpg',
                                title: 'Wall Sit',
                                minutes: 5,
                              ),
                              NextStep(
                                image: 'assets/images/good-morning.jpg',
                                title: 'Good Morning',
                                minutes: 5,
                              ),
                            ] else ...[
                              NextStep(
                                image: 'assets/images/Squat-Jump.jpg',
                                title: 'Jump Squat',
                                minutes: 7,
                              ),
                              NextStep(
                                image: 'assets/images/singleright.jpg',
                                title: 'Single Leg glute bridge (Right)',
                                minutes: 7,
                              ),
                              NextStep(
                                image: 'assets/images/singleleft.jpg',
                                title: 'Single Leg glute bridge (Left)',
                                minutes: 5,
                              ),
                              NextStep(
                                image: 'assets/images/runnercrunch.jpg',
                                title: 'Runner Crunch',
                                minutes: 7,
                              ),
                              NextStep(
                                image: 'assets/images/firekick.jpg',
                                title: 'Fire Hydrant Kick',
                                minutes: 7,
                              ),
                              NextStep(
                                image: 'assets/images/singletoe.jpg',
                                title: 'Single Leg toe touch',
                                minutes: 7,
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        child: Container(
          margin: EdgeInsets.only(
            left: 80.0,
            right: 80.0,
            bottom: 8.0,
            top: 8.0,
          ),
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 136, 153, 209),
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(125, 73, 88, 131),
                  blurRadius: 10.0,
                  offset: Offset(0.0, 5.0),
                ),
              ]),
          child: Text(
            'Start',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
        onTap: () {
          if (this.exercise.title == "Alpha") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) {
                return ActivityLowA();
              }),
            );
          } else if (this.exercise.title == "Beta") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) {
                return ActivityLowB();
              }),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) {
                return ActivityLowG();
              }),
            );
          }
        },
      ),
    );
  }
}
