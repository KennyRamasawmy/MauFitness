import 'package:MauFitness/components/next_step.dart';
import 'package:MauFitness/models/exercise.dart';
import 'package:MauFitness/pages/activityTimerCardio1.dart';
import 'package:flutter/material.dart';
import 'package:MauFitness/pages/activityTimerCardio2.dart';
import 'package:MauFitness/pages/activityTimerCardio3.dart';

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
                            if (this.exercise.title == "LISS (Low-Intensity Steady-State)") ...[
                              NextStep(
                                image: 'assets/images/treadmill.JPG',
                                title: 'Walk on Treadmill',
                                minutes: 20,
                              ),
                              NextStep(
                                image: 'assets/images/cycling.JPG',
                                title:
                                    'Low Resistance Cycling',
                                minutes: 20,
                              ),
                              NextStep(
                                image: 'assets/images/crosstrainer.JPG',
                                title:
                                    'Cross Trainer',
                                minutes: 20,
                              ),
                            ] else if (this.exercise.title == "MISS (Medium Intensity Invertal Session)") ...[
                              NextStep(
                                image: 'assets/images/crosstrainer.JPG',
                                title: 'Elliptical',
                                minutes: 25,
                              ),
                              NextStep(
                                image: 'assets/images/stairmaster.JPG',
                                title: 'Stair Master',
                                minutes: 25,
                              ),
                              NextStep(
                                image: 'assets/images/jogging.JPG',
                                title: 'Jogging',
                                minutes: 25,
                              ),
                            ]else if (this.exercise.title == "HIIT (High-Intensity Interval Training)") ...[
                              NextStep(
                                image: 'assets/images/mountainclimbers.JPG',
                                title: 'Mountain Climbers',
                                minutes: 2,
                              ),
                              NextStep(
                                image: 'assets/images/plank.JPG',
                                title: 'Forearm Plank ',
                                minutes: 1,
                              ),
                              NextStep(
                                image: 'assets/images/airsquat.JPG',
                                title: 'Air Squats',
                                minutes: 2,
                              ),
                              NextStep(
                                image: 'assets/images/splitsquatjump.JPG',
                                title: 'Split Squat Jumps',
                                minutes: 2,
                              ),
                              NextStep(
                                image: 'assets/images/jumpingjacks.JPG',
                                title: 'Jumping Jacks',
                                minutes: 2,
                              ),
                              NextStep(
                                image: 'assets/images/buttkicks.JPG',
                                title: 'Butt Kicks',
                                minutes: 2,
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
          if (this.exercise.title == "LISS (Low-Intensity Steady-State)") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) {
                return ActivityCardio1();
              }),
            );
          } else if (this.exercise.title == "MISS (Medium Intensity Invertal Session)") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) {
                return ActivityCardio2();
              }),
            );
          } else if (this.exercise.title == "HIIT (High-Intensity Interval Training)") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) {
                return ActivityCardio3();
              }),
            );
          }
        },
      ),
    );
  }
}