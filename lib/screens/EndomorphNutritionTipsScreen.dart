import 'dart:async';

import 'package:MauFitness/screens/EctomorphNutritionTipsScreen.dart';
import 'package:MauFitness/screens/MesomorphNutritionTipsScreen.dart';
import 'package:MauFitness/widgets/side_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_text_to_speech/flutter_text_to_speech.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:tilt_action/tilt_action.dart';

class EndoNutritionTipsScreen extends StatefulWidget {
  @override
  _TiltActionDemoState createState() => _TiltActionDemoState();
}

class _TiltActionDemoState extends State<EndoNutritionTipsScreen> {
  bool switchValue = false;
  bool isVisible = true;
  String text =
      "Test on a physical device. Sensors don't work accurately on emulators/simulators";
  Tilt tilt;

  VoiceController _voiceController;

  String text1 =
      '"To move to the next category page directly: \n\n 1st Step: Pause the video \n \n 2nd Step: Place your mobile phone screen forward on horizontal position (Quick move)\n( For 4 seconds) \n\n To move back to the previous category page directly: \n\n 1st Step: Pause the video \n \n 2nd Step: Place your mobile phone screen backward on horizontal position\n( For 4 seconds)';

  @override
  void initState() {
    _voiceController = FlutterTextToSpeech.instance.voiceController();
    super.initState();

    Future.delayed(const Duration(seconds: 15), () {
      if (this.mounted) {
        setState(() {
          isVisible = false;
        });
      }
    });

    tilt = Tilt(
      eventWaitTimeMS: 4000,
      offset: 0.01,
      onTiltUp: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return MesoNutritionTipsScreen();
          }),
        );
        setState(() {});
      },
      onTiltDown: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return EctoNutritionTipsScreen();
          }),
        );
        setState(() {});
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _voiceController.stop();
    tilt.stopListening();
  }

  _playVoice() {
    _voiceController.init().then((_) {
      _voiceController.speak(
        text1,
        VoiceControllerOptions(speechRate: 1.7),
      );
    });
  }

  _stopVoice() {
    _voiceController.stop();
  }

  static String videoID = 'EM667StRW3U';
  //YouTube Video Full URL : https://www.youtube.com/watch?v=dFKhWe2bBkM&feature=emb_title&ab_channel=BBKiVines
  //https://www.youtube.com/watch?v=EM667StRW3U&feature=youtu.be

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: videoID,
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
      forceHD: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    //Timer(Duration(seconds: 3), () => showAlert(context));
    Widget cancelButton = IconButton(
      icon: Icon(
        Icons.volume_up,
      ),
      onPressed: _playVoice,
      color: Color.fromARGB(255, 47, 190, 145),
    );

    Widget continueButton = IconButton(
      icon: Icon(
        Icons.volume_mute,
      ),
      onPressed: _stopVoice,
      color: Color.fromARGB(255, 47, 190, 145),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text("Endomorph",
            style: TextStyle(
                fontSize: 27,
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w700)),
        leading: BackButton(color: Color.fromARGB(255, 255, 255, 255)),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 250,
            child: YoutubePlayer(
              controller: _controller,
              liveUIColor: Colors.redAccent,
              showVideoProgressIndicator: true,
              progressColors: ProgressBarColors(
                  playedColor: Colors.red, handleColor: Colors.redAccent),
            ),
            color: Color.fromARGB(255, 0, 213, 71),
          ),
          Expanded(
              child: SingleChildScrollView(
                  child: new Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0),
                          border: Border.all(
                            color: Color.fromARGB(255, 0, 213, 71),
                            width: 6,
                          )),
                      child: Column(children: [
                        Switch(
                          activeColor: Color.fromARGB(255, 0, 213, 71),
                          activeTrackColor: Color.fromARGB(255, 255, 255, 255),
                          inactiveThumbColor: Color.fromARGB(255, 255, 0, 0),
                          inactiveTrackColor:
                              Color.fromARGB(255, 255, 255, 255),
                          value: switchValue,
                          onChanged: (value) {
                            switchValue = value;
                            isVisible = !isVisible;
                            setState(() {});
                          },
                        ),
                        Visibility(
                          child: AlertDialog(
                            title: Text("Note:"),
                            content: Text(
                                "To move to the next category page directly: \n\n 1st Step: Pause the video \n \n 2nd Step: Place your mobile phone screen forward on horizontal position (Quick move)\n( For 4 seconds) \n\n To move back to the previous category page directly: \n\n 1st Step: Pause the video \n \n 2nd Step: Place your mobile phone screen backward on horizontal position\n( For 4 seconds)",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w700)),
                            actions: [
                              cancelButton,
                              continueButton,
                            ],
                          ),
                          visible: isVisible,

                          /*body: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RaisedButton(
                                  onPressed: _playVoice,
                                  color: Color.fromARGB(255, 83, 140, 186),
                                  child: Text('Play Voice'),
                                ),
                                RaisedButton(
                                  onPressed: _stopVoice,
                                  color: Color.fromARGB(255, 71, 117, 155),
                                  child: Text('Stop Voice'),
                                ),
                              ],
                            ),
                          ),*/
                        ),
                        Text(
                          " ",
                          style: TextStyle(fontFamily: 'Arial', fontSize: 10),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Eating asap after workout",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " ",
                          style: TextStyle(fontFamily: 'Arial', fontSize: 20),
                        ),
                        Text(
                          "Eat a complete meal after workout",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " ",
                          style: TextStyle(fontFamily: 'Arial', fontSize: 20),
                        ),
                        Text(
                          "Beetroot/banana juice",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " ",
                          style: TextStyle(fontFamily: 'Arial', fontSize: 20),
                        ),
                        Text(
                          "Minimum 3.5 L of water per day",
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " ",
                          style: TextStyle(fontFamily: 'Arial', fontSize: 20),
                        ),
                        Text(
                          "Practice lot of cardio exercises",
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " ",
                          style: TextStyle(fontFamily: 'Arial', fontSize: 20),
                        ),
                        Text(
                          "Stay focus on main objective",
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " ",
                          style: TextStyle(fontFamily: 'Arial', fontSize: 20),
                        ),
                        Text(
                          "Good Example: ",
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "1.Drizzled fish,",
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "2.Broccolli, ",
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "3.Mushrooms,",
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "4.Rice.",
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]))))
        ],
      ),
    );
  }
}