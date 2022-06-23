import 'package:flutter/material.dart';
import 'package:MauFitness/models/challengesBCardio.dart';
import 'package:MauFitness/pages/challenges_rowB_Cardio.dart';

class ChallengesBBCardio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Container(
        color: Color.fromRGBO(232, 234, 246, 1),
        child: new CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          slivers: <Widget>[
            new SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              sliver: new SliverList(
                delegate: new SliverChildBuilderDelegate(
                  (context, index) =>
                      new ChallengesBCardioSummary(challengesBCardio[index]),
                  childCount: challengesBCardio.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
