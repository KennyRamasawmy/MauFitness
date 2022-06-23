import 'dart:async';

import 'package:MauFitness/models/challengesCCardio.dart';
import 'package:MauFitness/pages/challengeCardiodetailC.dart';
import 'package:MauFitness/screens/TrophyUnlockCC.dart';
import 'package:flutter/material.dart';

class TimeCC extends StatefulWidget {
  final ChallengeCCardio challengecCardio;
  TimeCC(this.challengecCardio);

  @override
  _TimeCCState createState() => _TimeCCState(this.challengecCardio);
}

class _TimeCCState extends State<TimeCC> {
  int seconds = 0, minutes = 0;
  Timer timer;
  bool active = false;
  List laps = [];

  final ChallengeCCardio challengecCardio;
  _TimeCCState(this.challengecCardio);

  void cleanLaps() {
    setState(() {
      this.laps = [];
    });
  }

  void addLap() {
    String lap =
        ((this.minutes >= 10) ? '${this.minutes}' : '0${this.minutes}') +
            ':' +
            ((this.seconds >= 10) ? '${this.seconds}' : '0${this.seconds}');
    setState(() {
      this.laps.add(lap);
    });
  }

  void stop() {
    this.timer.cancel();
    setState(() {
      this.active = false;
    });
  }

  void reset() {
    if (timer != null) this.timer.cancel();
    setState(() {
      this.seconds = 0;
      this.minutes = 0;
      this.active = false;
    });
  }

  void increment() {
    setState(() {
      this.active = true;
    });
    Timer.periodic(Duration(seconds: 1), (timer) {
      int localSeconds = this.seconds + 1;
      int localMinutes = this.minutes;
      if (localSeconds >= 60) {
        localMinutes++;

        if (localMinutes >= 5) {
          this.timer.cancel();
        }
        if (localMinutes > 60) {
          localMinutes = 0;
        } else {
          localSeconds = 0;
        }
      }
      setState(() {
        this.seconds = localSeconds;
        this.minutes = localMinutes;
        this.timer = timer;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    if ((this.minutes) == 5) {
      this.timer.cancel();
      Future.delayed(Duration.zero, () {
        if (challengecCardio.id == 5) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => TrophyUnlockCC()));
        } else {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ChallengedetailCCardio(
                  challengesCCardio[(challengecCardio.id)])));
        }
      });
    }
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            children: <Widget>[
              Image.network(
                challengecCardio.picture,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: 250,
              ),
              /*Text(
                'Timer',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),*/
              Container(
                margin: const EdgeInsets.symmetric(vertical: 50.0),
                child: Text(
                  ((this.minutes >= 10)
                          ? '${this.minutes}'
                          : '0${this.minutes}') +
                      ':' +
                      ((this.seconds >= 10)
                          ? '${this.seconds}'
                          : '0${this.seconds}'),
                  style: TextStyle(
                    fontSize: 70.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: this.reset,
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white60,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(
                          180.0,
                        ),
                      ),
                      child: Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(
                            180.0,
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.refresh,
                            color: Colors.white,
                            size: 40.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (this.active) ? this.stop : this.increment,
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(174, 83, 169, 0.6),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(
                          180.0,
                        ),
                      ),
                      child: Container(
                        height: 90.0,
                        width: 90.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(174, 83, 169, 1.0),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(
                            180.0,
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            (this.active) ? Icons.pause : Icons.play_arrow,
                            color: Colors.white,
                            size: 60.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: this.addLap,
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white60,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(
                          180.0,
                        ),
                      ),
                      child: Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(
                            180.0,
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.flag,
                            color: Colors.white,
                            size: 40.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 40.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      onTap: this.cleanLaps,
                      child: Text(
                        'Clear',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ListView.builder(
                      itemCount: this.laps.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 5.0,
                          ),
                          child: Text(
                            '$index - ${this.laps[index]}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
