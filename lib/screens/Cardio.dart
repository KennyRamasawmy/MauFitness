import 'package:MauFitness/components/header.dart';
import 'package:MauFitness/components/image_card_with_basic_footer.dart';
import 'package:MauFitness/components/section.dart';
import 'package:MauFitness/components/image_card_with_internal.dart';
import 'package:MauFitness/components/main_card_programs.dart';
import 'package:MauFitness/components/user_photo.dart';
import 'package:MauFitness/models/exercise.dart';
import 'package:MauFitness/pages/activity_detail.dart';
import 'package:MauFitness/widgets/side_nav_bar.dart';
//import 'package:meditation_app/widgets/bottom_nav_bar.dart';

import 'package:flutter/material.dart';
import 'package:MauFitness/pages/challengepagebodyACardio.dart';
import 'package:MauFitness/pages/challengepagebodyBCardio.dart';
import 'package:MauFitness/pages/challengepagebodyCCardio.dart';

class Cardio extends StatelessWidget {
  final List<Exercise> exercises = [
    Exercise(
      image: 'assets/images/liss.jpg',
      title: 'LISS (Low-Intensity Steady-State)',
      time: '1 hour',
      difficult: 'Low',
      
    ),
    Exercise(
      image: 'assets/images/cardiomix.jpg',
      title: 'MISS (Medium Intensity Invertal Session)',
      time: '1 hour15 minutes',
      difficult: 'Medium',
    ),
    Exercise(
      image: 'assets/images/hiit.jpg',
      title: 'HIIT (High-Intensity Interval Training)',
      time: '11 min',
      difficult: 'High',
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
                  return ActivityDetail(
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
    var size = MediaQuery.of(context)
        .size;
    return Scaffold(
      endDrawer: NavDrawer(),
      //bottomNavigationBar: BottomNavBar(),
      backgroundColor: Colors.indigo[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            //padding: EdgeInsets.only(top: 5.0),
            child: Column(
              children: <Widget>[
                Align(
                    alignment: Alignment(1.05, 0),
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      child: Image.asset(
                        "assets/images/hamburger.png",
                      width: size.width,
                    ),
                    ),
                  ),
                Header(
                  'Cardio',
                  //rightSide: UserPhoto(),
                ),
                Text(
                  'Push harder than yesterday if you want a different tomorrow! \u{270A}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 120, 120, 131),
                      fontWeight: FontWeight.w600),
                ),
                Section(
                  title: 'Cardio Workout',
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
                        return ChallengesAACardio();
                      }),
                    );
                  },
                  child: ImageCardWithInternal(
                    image: 'assets/images/cardiochallenge1.jpg',
                    title: 'Challenge 1',
                    duration: '\u{23F3} 10 min',
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
                        return ChallengesBBCardio();
                      }),
                    );
                  },
                  child: ImageCardWithInternal(
                    image: 'assets/images/cardiochallenge2.jpg',
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
                        return ChallengesCCCardio();
                      }),
                    );
                  },
                  child: ImageCardWithInternal(
                    image: 'assets/images/cardiochallenge3.jpg',
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