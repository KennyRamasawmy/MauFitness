import 'dart:ui';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:MauFitness/database.dart';

class MusicPlayer extends StatefulWidget {
  final Song song;
  MusicPlayer(this.song);

  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  bool playing = false;
  bool isNext = true;
  IconData playBtn = Icons.play_arrow;

  AudioPlayer audioPlayer = AudioPlayer();

  AudioPlayer _player;
  AudioCache cache;

  Duration position = new Duration();
  Duration musicLength = new Duration();

  double currentSlider = 0;

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  @override
  void initState() {
    super.initState();

    _player = AudioPlayer();
    cache = AudioCache(fixedPlayer: _player);

    _player.onDurationChanged.listen((Duration d) {
      setState(() => musicLength = d);
    });
    _player.onAudioPositionChanged
        .listen((Duration p) => {setState(() => position = p)});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: "image",
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.song.image), fit: BoxFit.cover)),
          ),
        ),
        WillPopScope(
          onWillPop: () async {
            _player.stop();
            return true;
          },
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 50, left: 20, right: 20),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 14,
                    spreadRadius: 16,
                    color: Colors.black.withOpacity(0.2),
                  )
                ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xFF9967d6).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                              width: 1.5,
                              color: Color(0xFF9967d6).withOpacity(0.2))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                            EdgeInsets.only(left: 20, right: 20, top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  widget.song.name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              widget.song.singer,
                              style: TextStyle(color: Colors.white,),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 2),
                                  trackShape: RectangularSliderTrackShape(),
                                  trackHeight: 6),
                              child: Slider(
                                value: position.inSeconds.toDouble(),
                                max: musicLength.inSeconds.toDouble(),
                                min: 0.0,
                                inactiveColor: Colors.white70,
                                activeColor: Color(0xFF9967d6),
                                onChanged: (value) async {
                                  setState(() {});
                                  seekToSec(value.toInt());
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    "${position.inMinutes}:${position.inSeconds.remainder(60).toString().padLeft(2, '0')}"),
                                Text(
                                    "${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60).toString().padLeft(2, '0')}"),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: IconButton(
                                  color: Colors.white,
                                  iconSize: 30,
                                  onPressed: () {
                                    _player.stop();
                                    cache.play(widget.song.sound);
                                  },
                                  icon: Icon(
                                    Icons.replay_outlined,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 80,bottom: 10),
                                child: IconButton(
                                  color: Colors.white,
                                  iconSize: 50,
                                  onPressed: () {
                                    if (!playing) {
                                      _player.stop();
                                      cache.play(widget.song.sound);
                                      setState(() {
                                        playBtn = Icons.pause;
                                        playing = true;
                                      });
                                    } else {
                                      _player.pause();
                                      setState(() {
                                        playBtn = Icons.play_arrow_outlined;
                                        playing = false;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    playBtn,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
