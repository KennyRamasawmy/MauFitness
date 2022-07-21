import 'package:MauFitness/components/next_step.dart';
import 'package:MauFitness/models/exercise.dart';
import 'package:MauFitness/pages/activityTimerUpper1.dart';
import 'package:MauFitness/pages/activityTimerUpper2.dart';
import 'package:MauFitness/pages/activityTimerUpper3.dart';
import 'package:flutter/material.dart';

class ActivityDetailU extends StatelessWidget {
  final String tag;
  final Exercise exercise;

  ActivityDetailU({
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
                            if (this.exercise.title == "Beginner") ...[
                              NextStep(
                                image: 'assets/images/bench press.jpg',
                                title: 'Bench Press',
                                minutes: 2,
                              ),
                              NextStep(
                                image: 'assets/images/military press.jpg',
                                title: 'Military Press',
                                minutes: 2,
                              ),
                              NextStep(
                                image: 'assets/images/Lats pull down.jpg',
                                title: 'Lats Pull Down',
                                minutes: 2,
                              ),
                              NextStep(
                                image: 'assets/images/tricep pull down.jpg',
                                title: 'Tricep Pull Down',
                                minutes: 2,
                              ),
                              NextStep(
                                image: 'assets/images/leg raise abs.jpg',
                                title: 'Leg  Raise',
                                minutes: 2,
                              ),
                            ] else if (this.exercise.title ==
                                "Intermediate") ...[
                              NextStep(
                                image: 'assets/images/dumbell press.jpg',
                                title: 'Dumbell Press',
                                minutes: 5,
                              ),
                              NextStep(
                                image: 'assets/images/T Bar lift Back.jpg',
                                title: 'T-Bar Rowing',
                                minutes: 5,
                              ),
                              NextStep(
                                image: 'assets/images/kickback tricep.jpg',
                                title: 'Kickbacks',
                                minutes: 5,
                              ),
                              NextStep(
                                image: 'assets/images/conc curl.png',
                                title: 'Seated Bicep Curl',
                                minutes: 5,
                              ),
                              NextStep(
                                image: 'assets/images/side crunch.jpg',
                                title: 'Side Crunch',
                                minutes: 5,
                              ),
                              NextStep(
                                image: 'assets/images/dips tricep.jpg',
                                title: 'Bodyweight Dips',
                                minutes: 7,
                              ),
                              NextStep(
                                image: 'assets/images/rear delt raise.jpg',
                                title: 'Rear Delt Raise',
                                minutes: 7,
                              ),
                              NextStep(
                                image: 'assets/images/planks abs.jpg',
                                title: 'Plank',
                                minutes: 5,
                              ),
                            ] else ...[
                              NextStep(
                                image: 'assets/images/incline bench press.jpg',
                                title: 'Inclined Bench Press',
                                minutes: 7,
                              ),
                              NextStep(
                                image: 'assets/images/Chest fly.png',
                                title: 'Cable Chest FLy',
                                minutes: 7,
                              ),
                              NextStep(
                                image: 'assets/images/dumbell pull over.jpg',
                                title: 'Dumbell Pull Over',
                                minutes: 7,
                              ),
                              NextStep(
                                image: 'assets/images/Seated Curl.jpg',
                                title: 'Seated Curl',
                                minutes: 7,
                              ),
                              NextStep(
                                image: 'assets/images/Seated assited Rows.jpg',
                                title: 'Seated Assissted Curl',
                                minutes: 7,
                              ),
                              NextStep(
                                image: 'assets/images/dumbell curl.png',
                                title: 'Dumbell Curl',
                                minutes: 7,
                              ),
                              NextStep(
                                image: 'assets/images/reverse tricep curl.jpg',
                                title: 'Reverse Curl',
                                minutes: 7,
                              ),
                              NextStep(
                                image: 'assets/images/one arm pull down.jpg',
                                title: 'One Arm Pull Down',
                                minutes: 7,
                              ),
                              NextStep(
                                image: 'assets/images/twist abs.jpg',
                                title: 'Abdominal Twist',
                                minutes: 7,
                              ),
                              NextStep(
                                image: 'assets/images/bicycle crunch.jpg',
                                title: 'Bicycle Crunch',
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
          if (this.exercise.title == "Beginner") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) {
                return ActivityUpper1();
              }),
            );
          } else if (this.exercise.title == "Intermediate") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) {
                return ActivityUpper2();
              }),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) {
                return ActivityUpper3();
              }),
            );
          }
        },
      ),
    );
  }
}
