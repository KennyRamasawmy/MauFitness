import 'dart:async';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ActivityLowG extends StatefulWidget {
  const ActivityLowG({Key key}) : super(key: key);

  @override
  _ActivityLowGState createState() => _ActivityLowGState();
}

class _ActivityLowGState extends State<ActivityLowG> {
  int seconds = 120;
  bool isTimerRunning = false;
  bool isResume = true;
  bool isEnd = false;
  Timer timer;
  int count = 0;
  bool _isPlayerReady = false;
  YoutubePlayerController _controller;
  TextEditingController _idController;
  PlayerState _playerState;
  TextEditingController _seekToController;
  YoutubeMetaData _videoMetaData;
  
   @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: videoID,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: true,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
    _idController = TextEditingController();
    _seekToController = TextEditingController();
    _videoMetaData = const YoutubeMetaData();
    _playerState = PlayerState.unknown;
  }
  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }


  void startTimer() {
    _controller.play();
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

  cancelTimer() {
    _controller.seekTo(Duration.zero);
    _controller.pause();
    setState(() {});
    timer?.cancel();
    setState(() {
      seconds = 120;
      isTimerRunning = false;
      isEnd = false;
    });
  }

  static String videoID = 'UItWltVZZmE';
  
  void nextExercise() {
    if (count == 0) {
      videoID = 'UItWltVZZmE'; //change video id
      YoutubePlayer(
                controller: _controller,
                liveUIColor: Colors.amber,
                showVideoProgressIndicator: true,
              );
      startTimer();
      cancelTimer();
      count++;
    } else if (count == 1) {
      videoID = 'UItWltVZZmE'; //change video id
      YoutubePlayer(
                controller: _controller,
                liveUIColor: Colors.amber,
                showVideoProgressIndicator: true,
              );
      startTimer();
      cancelTimer();
      count++;
    } else if (count == 2) {
      videoID = 'UItWltVZZmE'; //change video id
      YoutubePlayer(
                controller: _controller,
                liveUIColor: Colors.amber,
                showVideoProgressIndicator: true,
              );
      startTimer();
      cancelTimer();
      count++;
    } else {
      videoID = 'UItWltVZZmE'; //change video id
      YoutubePlayer(
                controller: _controller,
                liveUIColor: Colors.amber,
                showVideoProgressIndicator: true,
              );
      startTimer();
      cancelTimer();
      count++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        //backgroundColor: Colors.red,

        body: SingleChildScrollView(
          child: Card(
            color: Color.fromRGBO(232, 234, 246, 1), //colour big container
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(),
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
              
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                decoration:
                      BoxDecoration(
                        color: Color.fromARGB(255, 136, 153, 209), //youtube container colour
                        border: Border.all(
                          color: Color.fromARGB(255, 136, 153, 209), //color of border
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0)),
                      ), 
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: YoutubePlayer(
                    controller: _controller,
                  liveUIColor: Colors.amber,
                  showVideoProgressIndicator: true,
                    onReady: () {
                      _isPlayerReady = true;
                    },
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(top: 25.0, bottom: 25.0),
              ),
            
              Container(
                // box around circle
                // decoration:
                //       BoxDecoration(color: Color.fromRGBO(232, 234, 246, 1)),
                //       padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                height: 200,
                width: 200,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: seconds / 120,
                      valueColor: const AlwaysStoppedAnimation(
                          Color.fromARGB(255, 136, 153, 209)),
                      strokeWidth: 12,
                      backgroundColor: Color.fromARGB(255, 241, 137, 137),
                    ),
                    Center(
                      child: isEnd
                          ? Icon(
                              Icons.check,
                              color: Colors.lightGreenAccent,
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
              
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              ),
              
              const SizedBox(
                height: 45,
              ),
              if (isEnd && count < 4) ...[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                  onPressed: () {
                    nextExercise();
                    _controller.play();
                    setState(() {
                      isTimerRunning = true;
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Push harder than yesterday if you want a different tomorrow! \n'
                      'Next',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              ),
              ],

              
              isTimerRunning
                  ? Row(
                    
                    
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      
                      children: [
                        
                        //put all inside container and add boxdecoration
              
                        
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(20.0))),
                          onPressed: () {
                            if (isResume) {
                              _controller.pause();
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
                          child: Container(
                            margin: const EdgeInsets.all(8.0),
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

                          child: Container(
                            margin: const EdgeInsets.all(8.0),
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

                  Padding(
                    padding: const EdgeInsets.only(top: 25.0, bottom: 40.0),
                  ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}
