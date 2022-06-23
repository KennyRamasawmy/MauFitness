import 'dart:async';
import 'package:flutter_text_to_speech/flutter_text_to_speech.dart';
import 'package:MauFitness/screens/EctomorphNutritionTipsScreen.dart';
import 'package:MauFitness/screens/EndomorphNutritionTipsScreen.dart';
import 'package:MauFitness/screens/tilt_bmi.dart';
import 'package:flutter/material.dart';
import 'package:tilt_action/tilt_action.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MesoNutritionTipsScreen extends StatefulWidget {
  @override
  _TiltActionDemoState createState() => _TiltActionDemoState();
}

class _TiltActionDemoState extends State<MesoNutritionTipsScreen> {
  bool switchValue = false;
  bool isVisible = true;
  String text =
      "Test on a physical device. Sensors don't work accurately on emulators/simulators";
  Tilt tilt;
  VoiceController _voiceController;

  String text1 =
      'To move to the next categorys page directly: \n\n 1st Step: Pause the video \n \n 2nd Step: Turn your mobile phone screen backward 180° down\n( not more than 3.5 seconds)';

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
      eventWaitTimeMS: 3000,
      onTiltUp: () {
        setState(() {});
      },
      onTiltDown: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return EctoNutritionTipsScreen();
          }),
        );
        setState(() {
          //text = "I am tilted Down";
        });
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

  static String videoID = 'lKGw08mw_Sg';
  //YouTube Video Full URL : https://www.youtube.com/watch?v=dFKhWe2bBkM&feature=emb_title&ab_channel=BBKiVines
  //https://www.youtube.com/watch?v=lKGw08mw_Sg

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
        title: Text("Mesomorph",
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
                  playedColor: Color.fromARGB(255, 255, 17, 0),
                  handleColor: Colors.redAccent),
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
                                "To move to the next category's page directly: \n\n 1st Step: Pause the video \n \n 2nd Step: Turn your mobile phone screen backward 180° down\n( not more than 3.5 seconds)",
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
                          "Eat clean carbs",
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
                          "Advisable to eat broccolli",
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
                          "Not cheat day, but cheat meal",
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
                          "One cheat meal per week",
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
                          "Increase fiber intake ",
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
                          "Cut out canned food",
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
                          "1.Potato,",
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "2.Egg yolks, ",
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " 3.Green Salad,",
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "4.Orange juice.",
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
