import 'package:flutter/material.dart';
import 'package:MauFitness/models/challengesA.dart';
import 'package:MauFitness/pages/challenges_rowA.dart';

class ChallengesAA extends StatelessWidget {
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
                      new ChallengesASummary(challengesA[index]),
                  childCount: challengesA.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
