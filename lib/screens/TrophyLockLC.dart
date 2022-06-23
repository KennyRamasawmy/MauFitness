import 'package:MauFitness/components/header.dart';
import 'package:MauFitness/components/image_card_with_internal_Achieve.dart';
import 'package:MauFitness/components/section.dart';

import 'package:flutter/material.dart';

class AchieveScreenLockLC extends StatelessWidget {
  List<Widget> generateList(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: BottomNavBar(),
      backgroundColor: Colors.lightBlue[200],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Header(
                  'ACHIEVEMENTS',
                ),
                Section(
                  title: 'Upper Body Trophies',
                  horizontalList: <Widget>[
                    ImageCardWithInternalAchieve(
                      image: 'assets/images/trophy2.jpg',
                      title: 'Challenge 1',
                    ),
                    ImageCardWithInternalAchieve(
                      image: 'assets/images/trophy3.jpg',
                      title: 'Challenge 2',
                    ),
                    ImageCardWithInternalAchieve(
                      image: 'assets/images/trophy4.jpg',
                      title: 'Challenge 3',
                    ),
                  ],
                ),
                Section(
                  title: 'Lower Body Trophies',
                  horizontalList: <Widget>[
                    ImageCardWithInternalAchieve(
                      image: 'assets/images/trophy2.jpg',
                      title: 'Challenge 1',
                    ),
                    ImageCardWithInternalAchieve(
                      image: 'assets/images/trophy3.jpg',
                      title: 'Challenge 2',
                    ),
                    ImageCardWithInternalAchieve(
                      image: 'assets/images/trophy4.jpg',
                      title: 'Challenge 3',
                    ),
                  ],
                ),
                Section(
                  title: 'Cardio Trophies',
                  horizontalList: <Widget>[
                    ImageCardWithInternalAchieve(
                      image: 'assets/images/trophy2 un.jpg',
                      title: 'Challenge 1',
                    ),
                    ImageCardWithInternalAchieve(
                      image: 'assets/images/trophy3 un.jpg',
                      title: 'Challenge 2',
                    ),
                    ImageCardWithInternalAchieve(
                      image: 'assets/images/trophy4 un.jpg',
                      title: 'Challenge 3',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
