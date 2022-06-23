import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Youtube extends StatefulWidget {

  @override
  _YoutubeState createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {

static String videoID = 'dFKhWe2bBkM';
 
  // YouTube Video Full URL : https://www.youtube.com/watch?v=dFKhWe2bBkM&feature=emb_title&ab_channel=BBKiVines
 
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: videoID,
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: YoutubePlayer(
            controller: _controller,
            liveUIColor: Colors.amber,
            showVideoProgressIndicator: true,
          ),
        ));
  }



}