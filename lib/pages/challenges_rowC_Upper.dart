import 'package:MauFitness/models/challengesCUpperBody.dart';
import 'package:MauFitness/pages/challengeUpperdetailC.dart';
import 'package:flutter/material.dart';
import 'package:MauFitness/components/challengeseperator.dart';
import 'package:MauFitness/components/textStyle.dart';

class ChallengesCUpperSummary extends StatelessWidget {
  final ChallengeCUpperBody challengesCUpperBody;
  final bool horizontal;

  ChallengesCUpperSummary(this.challengesCUpperBody, {this.horizontal = true});

  ChallengesCUpperSummary.vertical(this.challengesCUpperBody)
      : horizontal = false;

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      margin: new EdgeInsets.only(top: 35.0),
      alignment:
          horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: new AssetImage(challengesCUpperBody.image),
            fit: BoxFit.fill),
      ),
      height: 110.0,
      width: 110.0,
    );

    Widget _planetValue({String value}) {
      return new Container(
        child: new Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          new Text(challengesCUpperBody.time, style: Style.smallTextStyle),
        ]),
      );
    }

    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(
          horizontal ? 76.0 : 16.0, horizontal ? 13.0 : 42.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment:
            horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(challengesCUpperBody.name, style: Style.titleTextStyle),
          new Container(height: 10.0),
          new Text(challengesCUpperBody.work, style: Style.commonTextStyle),
          new Separator(),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Expanded(
                  flex: horizontal ? 1 : 0,
                  child: _planetValue(
                    value: challengesCUpperBody.time,
                  )),
            ],
          ),
        ],
      ),
    );

    final planetCard = new Container(
      child: planetCardContent,
      height: horizontal ? 185.0 : 154.0,
      margin: horizontal
          ? new EdgeInsets.only(left: 46.0)
          : new EdgeInsets.only(top: 72.0),
      decoration: new BoxDecoration(
        color: Color.fromARGB(255, 141, 141, 182),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(20.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 5.0),
          ),
        ],
      ),
    );

    return new GestureDetector(
      onTap: horizontal
          ? () => Navigator.of(context).push(
                new PageRouteBuilder(
                  pageBuilder: (_, __, ___) =>
                      new ChallengedetailCUpper(challengesCUpperBody),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          new FadeTransition(opacity: animation, child: child),
                ),
              )
          : null,
      child: new Material(
        color: Colors.indigo[50],
        child: new Container(
          margin: const EdgeInsets.only(right: 20.0, left: 10.0, top: 25.0),
          child: new Stack(
            children: <Widget>[
              planetCard,
              planetThumbnail,
            ],
          ),
        ),
      ),
    );
  }
}