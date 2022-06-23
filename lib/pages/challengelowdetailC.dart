import 'package:MauFitness/timer/ScreenlowC.dart';
import 'package:flutter/material.dart';
import 'package:MauFitness/models/challengesC.dart';
import 'package:MauFitness/pages/challenges_rowC.dart';
import 'package:MauFitness/components/challengeseperator.dart';
import 'package:MauFitness/components/textStyle.dart';

class ChallengedetailC extends StatelessWidget {
  final ChallengeC challengec;
  ChallengedetailC(this.challengec);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        constraints: new BoxConstraints.expand(),
        color: Colors.indigo[50],
        child: new Stack(
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            _getContent(context),
            _getToolbar(context),
          ],
        ),
      ),
    );
  }

  Container _getBackground() {
    return new Container(
      child: new Image.network(
        challengec.picture,
        fit: BoxFit.cover,
        height: 300.0,
      ),
      constraints: new BoxConstraints.expand(height: 295.0),
      padding: new EdgeInsets.only(top: 25.0),
    );
  }

  Container _getGradient() {
    return new Container(
      margin: new EdgeInsets.only(top: 220.0),
      height: 110.0,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: <Color>[
            new Color(0x00736AB7),
            Color.fromARGB(255, 174, 166, 233)
          ],
          stops: [0.0, 0.9],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0),
        ),
      ),
    );
  }

  Container _getContent(BuildContext context) {
    final _overviewTitle = "\u{26A0} Follow the steps ".toUpperCase();
    return new Container(
      child: new ListView(
        padding: new EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
        children: <Widget>[
          Padding(
            padding: new EdgeInsets.only(
              top: 210.0,
            ),
          ),
          new ChallengesCSummary(
            challengec,
            //horizontal: false,
          ),
          new Container(
            padding: new EdgeInsets.symmetric(horizontal: 32.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: new EdgeInsets.only(
                  top: 20.0,
                )),
                new Text(
                  _overviewTitle,
                  style: Style.headerTextStyle1,
                ),
                new Separator(),
                new Text(challengec.description, style: Style.commonTextStyle1),
                Padding(
                  padding: EdgeInsets.only(left: 60.0, right: 40.0, top: 20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 162, 196, 239),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TimelowC(challengec)));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Start Timer',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _getToolbar(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: new BackButton(color: Color.fromARGB(255, 110, 109, 109)),
    );
  }
}
