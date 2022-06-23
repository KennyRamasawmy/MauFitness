import 'dart:async';

import 'package:flutter/material.dart';

class ActivityLowA extends StatefulWidget {
  const ActivityLowA({Key key}) : super(key: key);

  @override
  _ActivityLowAState createState() => _ActivityLowAState();
}

class _ActivityLowAState extends State<ActivityLowA> {
  int seconds = 120;
  bool isTimerRunning = false;
  bool isResume = true;
  bool isEnd = false;
  Timer timer;
  int count = 0;

  void startTimer() {
    timer = Timer.periodic(const Duration(milliseconds: 1000), (_) {
      if (seconds > 0) {
        setState(() {
          seconds--;
          isTimerRunning = true;
        });
      } else {
        setState(() {
          isEnd = true;
        });
      }
    });
  }

  void cancelTimer() {
    timer?.cancel();
    setState(() {
      seconds = 120;
      isTimerRunning = false;
      isEnd = false;
    });
  }

  String image = 'https://media.giphy.com/media/l0HlNOsSRC0Bts7iU/giphy.gif';

  void nextExercise() {
    if (count == 0) {
      image = 'https://media.giphy.com/media/Pp9LLVJFfBWO2G9osB/giphy.gif';
      startTimer();
      cancelTimer();
      count++;
    } else if (count == 1) {
      image = 'https://media.giphy.com/media/hVgHe9mDwpH2CDBR4D/giphy.gif';
      startTimer();
      cancelTimer();
      count++;
    } else if (count == 2) {
      image = 'https://media.giphy.com/media/cI9PSDuenPWiAgSKeN/giphy.gif';
      startTimer();
      cancelTimer();
      count++;
    } else {
      image = 'https://media.giphy.com/media/4Tgw5Lf0RuMmYdwC5G/giphy.gif';
      startTimer();
      cancelTimer();
      count++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        //backgroundColor: Colors.transparent,

        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Positioned(
                child: GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 30.0,
                      left: 295.0,
                    ),
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(177, 145, 127, 127),
                    ),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              // Header('Move your body'),
              Container(
                child: Center(
                  child: Container(
                    //width: MediaQuery.of(context).size.width,
                    width: 360.0,
                    height: 300.0,
                    // height: BoxFit.fitHeight,
                    child: Image.network(this.image),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Text(
                  'Plank',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 30.0),
                child: Text(
                  'Next: Push-ups',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: seconds / 120,
                      valueColor: const AlwaysStoppedAnimation(
                          Color.fromARGB(255, 16, 223, 238)),
                      strokeWidth: 12,
                      backgroundColor: Color.fromARGB(255, 241, 137, 137),
                    ),
                    Center(
                      child: isEnd
                          ? Icon(
                              Icons.check,
                              color: Colors.greenAccent,
                              size: 134,
                            )
                          : Text(
                              '$seconds',
                              style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 54,
                              ),
                            ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              if (isEnd && count < 4) ...[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                  onPressed: () {
                    nextExercise();
                    setState(() {
                      isTimerRunning = true;
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],

              isTimerRunning
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(20.0))),
                          onPressed: () {
                            if (isResume) {
                              timer?.cancel();
                              setState(() {
                                isResume = false;
                              });
                            } else {
                              startTimer();
                              setState(() {
                                isResume = true;
                              });
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              isResume ? 'Pause' : 'Resume',
                              style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(20.0))),
                          onPressed: cancelTimer,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              isEnd ? 'Reset' : 'Cancel',
                              style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0))),
                      onPressed: startTimer,
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
            ],
          ),
        ),
      ),
    );
  }
}
