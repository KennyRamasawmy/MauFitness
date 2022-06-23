import 'package:MauFitness/models/challengesAUpperBody.dart';
import 'package:MauFitness/pages/challenges_rowA_Upper.dart';
import 'package:flutter/material.dart';

class ChallengesAAUpper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Container(
        color: Colors.indigo[50],
        child: new CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          slivers: <Widget>[
            new SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              sliver: new SliverList(
                delegate: new SliverChildBuilderDelegate(
                  (context, index) =>
                      new ChallengesAUpperSummary(challengesAUpperBody[index]),
                  childCount: challengesAUpperBody.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
