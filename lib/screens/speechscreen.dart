import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter_tts/flutter_tts.dart';

class SpeechScreen extends StatefulWidget {
  @override
  _SpeechScreenState createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {
  bool isSpeaking = false;
  String welcome =
      'Welcome to the tips corners of Maufitness, Choose one of these: the first one is Workout, second is Nutrtion and third is Meditation. Kindly tap on the speak button to select one of these.';
  final _flutterTts = FlutterTts();

  void initializeTts() {
    _flutterTts.setStartHandler(() {
      setState(() {
        isSpeaking = true;
      });
    });
    _flutterTts.setCompletionHandler(() {
      setState(() {
        isSpeaking = false;
      });
    });
    _flutterTts.setErrorHandler((message) {
      setState(() {
        isSpeaking = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    initializeTts();
    _speech = stt.SpeechToText();
  }

  void speak() async {
    await _flutterTts.speak(welcome);
  }

  @override
  void dispose() {
    _flutterTts.stop();
    super.dispose();
  }

  final Map<String, HighlightedWord> _highlights = {
    'Workout': HighlightedWord(
      onTap: () => print(''),
      textStyle: const TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
    ),
    'Nutrition': HighlightedWord(
      onTap: () => print(''),
      textStyle: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
    ),
    'Meditation': HighlightedWord(
      onTap: () => print(''),
      textStyle: const TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    ),
    'like': HighlightedWord(
      onTap: () => print(''),
      textStyle: const TextStyle(
        color: Colors.blueAccent,
        fontWeight: FontWeight.bold,
      ),
    ),
    'comment': HighlightedWord(
      onTap: () => print(''),
      textStyle: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
    ),
  };
  stt.SpeechToText _speech;
  bool _isListening = false;
  String _text = 'Press the button and start speaking';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 237, 208),
      appBar: AppBar(
        title: Text('Tips corner'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: _isListening,
        glowColor: Theme.of(context).primaryColor,
        endRadius: 75.0,
        duration: const Duration(milliseconds: 2000),
        repeatPauseDuration: const Duration(milliseconds: 1),
        repeat: true,
        child: FloatingActionButton(
          onPressed: _listen,
          child: Icon(_isListening ? Icons.mic : Icons.mic_none),
        ),
      ),
      body: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () => speak(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10, bottom: 20.0),
            child: Text(
              "Welcome to the tips corner of \nMaufitness",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: (TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90.0, left: 10, bottom: 20.0),
            child: Text(
              "Choose one of these:\n   1. Workout\n   2. Nutrtion\n   3. Meditation",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20.0, 575.0, 0.0, 0.0),
            child: TextHighlight(
              text: _text,
              words: _highlights,
              textStyle: const TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              textAlign: (TextAlign.center),
            ),
          ),
          if (_text == "workout") ...[
            Padding(
              padding: const EdgeInsets.only(
                  top: 250.0, left: 5, right: 5, bottom: 20.0),
              child: Text(
                "Exercise can help prevent excess weight gain or help maintain weight loss. When you engage in physical activity, you burn calories. The more intense the activity, the more calories you burn.",
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
                textAlign: (TextAlign.center),
              ),
            ),
          ],
          if (_text == "nutrition") ...[
            Padding(
              padding: const EdgeInsets.only(
                  top: 250.0, left: 5, right: 5, bottom: 20.0),
              child: Text(
                "A well-balanced diet provides all of the: energy you need to keep active throughout the day. nutrients you need for growth and repair, helping you to stay strong and healthy and help to prevent diet-related illness, such as some cancers.",
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
                textAlign: (TextAlign.center),
              ),
            ),
          ],
          if (_text == "meditation") ...[
            Padding(
              padding: const EdgeInsets.only(
                  top: 240.0, left: 5, bottom: 20.0, right: 5),
              child: Text(
                "Meditation can give you a sense of calm, peace and balance that can benefit both your emotional well-being and your overall health. You can also use it to relax and cope with stress by refocusing your attention on something calming. Meditation can help you learn to stay centered and keep inner peace.",
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
                textAlign: (TextAlign.center),
              ),
            ),
          ],
          if (_text != "meditation" ||
              _text != "workout" ||
              _text != "nutrition") ...[
            Padding(
              padding: const EdgeInsets.only(top: 600.0, left: 120.0),
              child: Text(
                "Try again...",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ],
      ),
    );
  }

  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          onResult: (val) => setState(() {
            _text = val.recognizedWords;
          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }
}
