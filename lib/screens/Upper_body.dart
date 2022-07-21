import 'package:MauFitness/components/header.dart';
import 'package:MauFitness/components/image_card_with_basic_footer.dart';
import 'package:MauFitness/components/section.dart';
import 'package:MauFitness/components/image_card_with_internal.dart';
//import 'package:meditation_app/components/main_card_programs.dart';
//import 'package:meditation_app/components/user_photo.dart';
import 'package:MauFitness/models/exercise.dart';
import 'package:MauFitness/pages/activity_detaillow.dart';
import 'package:MauFitness/pages/activity_detaillupper.dart';
import 'package:MauFitness/pages/challengepagebodyAUpper.dart';
import 'package:MauFitness/pages/challengepagebodyBUpper.dart';
import 'package:MauFitness/pages/challengepagebodyCUpper.dart';
//import 'package:meditation_app/widgets/bottom_nav_bar.dart';

import 'package:flutter/material.dart';

class UpperBody extends StatelessWidget {
  final List<Exercise> exercises = [
    Exercise(
      image: 'assets/images/benchpress.jpg',
      title: 'Beginner',
      time: '\u{23F3} 10 minutes',
      difficult: 'Think',
    ),
    Exercise(
      image: 'assets/images/shoulderpress1.jpg',
      title: 'Intermediate',
      time: '\u{23F3} 25 minutes',
      difficult: 'Look',
    ),
    Exercise(
      image: 'assets/images/cablechess.jpg',
      title: 'Pro',
      time: '\u{23F3} 42 minutes',
      difficult: 'Feel',
    )
  ];

  List<Widget> generateList(BuildContext context) {
    List<Widget> list = [];
    int count = 0;
    exercises.forEach((exercise) {
      Widget element = Container(
        margin: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          child: ImageCardWithBasicFooter(
            exercise: exercise,
            tag: 'imageHeader$count',
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return ActivityDetailU(
                    exercise: exercise,
                    tag: 'imageHeader$count',
                  );
                },
              ),
            );
          },
        ),
      );
      list.add(element);
      count++;
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: BottomNavBar(),
      backgroundColor: Colors.indigo[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Header(
                  'Upper Body',
                  //rightSide: UserPhoto(),
                ),
                //MainCardPrograms(), // MainCard
                Text(
                  'Each Reps Counts!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 120, 120, 131),
                      fontWeight: FontWeight.w600),
                ),

                Section(
                  title: 'Train your body',
                  horizontalList: this.generateList(context),
                ),

                Section(
                  title: 'Challenges',
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return ChallengesAAUpper();
                      }),
                    );
                  },
                  child: ImageCardWithInternal(
                    image: 'assets/images/upperchallenge1.jpg',
                    title: 'Challenge 1',
                    duration: '\u{23F3} 30 min',
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return ChallengesBBUpper();
                      }),
                    );
                  },
                  child: ImageCardWithInternal(
                    image: 'assets/images/upperchallenge2.jpg',
                    title: 'Challenge 2',
                    duration: '\u{23F3} 30 min',
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return ChallengesCCUpper();
                      }),
                    );
                  },
                  child: ImageCardWithInternal(
                    image: 'assets/images/upperchallenge3.jpg',
                    title: 'Challenge 3',
                    duration: '\u{23F3} 30 min',
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
