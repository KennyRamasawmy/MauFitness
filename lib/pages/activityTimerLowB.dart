import 'dart:async';
import 'package:flutter/material.dart';

class ActivityLowB extends StatefulWidget {
  const ActivityLowB({Key key}) : super(key: key);

  @override
  _ActivityLowBState createState() => _ActivityLowBState();
}

class _ActivityLowBState extends State<ActivityLowB> {
  int seconds = 300;
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
      seconds = 300;
      isTimerRunning = false;
      isEnd = false;
    });
  }

  String image = 'https://media.giphy.com/media/pVZiKyLAw1gHu/giphy.gif';

  void nextExercise() {
    if (count == 0) {
      image = 'https://media.giphy.com/media/RlN58dnfELJUCZEPkr/giphy.gif';
      startTimer();
      cancelTimer();
      count++;
    } else if (count == 1) {
      image = 'https://media.giphy.com/media/UX5tFptTkruo6xqp65/giphy.gif';
      startTimer();
      cancelTimer();
      count++;
    } else if (count == 2) {
      image = 'https://media.giphy.com/media/WOMf2YUgi1yiUIbbWm/giphy.gif';
      startTimer();
      cancelTimer();
      count++;
    } else {
      image =
          'https://media1.popsugar-assets.com/files/thumbor/cP6T-qPYbouyAQSnUouWWzHO1eA/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2017/03/16/755/n/1922729/87f8a40c98d7c402_EXAMPLE.Good-Morning.gif';
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
                width: 350.0,
                height: 300.0,
                margin: EdgeInsets.only(
                  top: 10.0,
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(232, 242, 248, 1.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Container(
                    // width: MediaQuery.of(context).size.width,
                    width: 300.0,
                    height: 300.0,
                    // height: BoxFit.fitHeight,
                    child: Image.network(this.image),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(400.0, 50.0, 400.0, 5.0),
              ),
              SizedBox(
                height: 250,
                width: 250,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: seconds / 300,
                      valueColor: const AlwaysStoppedAnimation(Colors.white),
                      strokeWidth: 12,
                      backgroundColor: Color.fromARGB(255, 196, 156, 238),
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
                        padding: EdgeInsets.all(15.0),
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
