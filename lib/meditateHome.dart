import 'package:flutter/material.dart';
import 'package:MauFitness/database.dart';
import 'package:MauFitness/musicPlayer.dart';

class mHomePage extends StatefulWidget {
  @override
  _mHomePageState createState() => _mHomePageState();
}

class _mHomePageState extends State<mHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFd3cae6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Breathing ",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF9967d6)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Exercises",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF9967d6)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10, bottom: 20),
                  child: Text(
                    "4 songs",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey[900],),
                  ),
                ),
                Container(
                  height: 570,
                  child: TrackWidget(refresh),
                ),
                SizedBox(
                  height: 130,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  refresh() {
    setState(() {});
  }
}

class mHomePage2 extends StatefulWidget {
  @override
  _mHomePage2State createState() => _mHomePage2State();
}

class _mHomePage2State extends State<mHomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFd3cae6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Sleep",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF9967d6)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10, bottom: 20),
                  child: Text(
                    "4 songs",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey[900],),
                  ),
                ),
                Container(
                  height: 570,
                  child: TrackWidget2(refresh),
                ),
                SizedBox(
                  height: 130,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  refresh() {
    setState(() {});
  }
}

class mHomePage3 extends StatefulWidget {
  @override
  _mHomePage3State createState() => _mHomePage3State();
}

class _mHomePage3State extends State<mHomePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFd3cae6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Relax",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF9967d6)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10, bottom: 20),
                  child: Text(
                    "4 songs",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey[900],),
                  ),
                ),
                Container(
                  height: 570,
                  child: TrackWidget3(refresh),
                ),
                SizedBox(
                  height: 130,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  refresh() {
    setState(() {});
  }
}

class mHomePage4 extends StatefulWidget {
  @override
  _mHomePage4State createState() => _mHomePage4State();
}

class _mHomePage4State extends State<mHomePage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFd3cae6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Cheer",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF9967d6)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Up",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF9967d6)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10, bottom: 20),
                  child: Text(
                    "4 songs",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey[900],),
                  ),
                ),
                Container(
                  height: 570,
                  child: TrackWidget4(refresh),
                ),
                SizedBox(
                  height: 130,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  refresh() {
    setState(() {});
  }
}

Song currentSong = Song(
    name: "title",
    singer: "singer",
    image: "assets/song1.jpg",
    duration: 100,
    color: Colors.black);
double currentSlider = 0;

class TrackWidget extends StatelessWidget {
  final Function() notifyParent;
  TrackWidget(this.notifyParent);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mostPopular.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => MusicPlayer(currentSong))));
            currentSong = mostPopular[index];
            currentSlider = 0;
            notifyParent();
          },
          child: Container(
            margin: EdgeInsets.all(10),
            width: 50,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: mostPopular[index].color,
                      blurRadius: 1,
                      spreadRadius: 0.3)
                ],
                image: DecorationImage(
                    image: AssetImage(mostPopular[index].image),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mostPopular[index].name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(mostPopular[index].singer,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class TrackWidget2 extends StatelessWidget {
  final Function() notifyParent;
  TrackWidget2(this.notifyParent);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mostSleep.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => MusicPlayer(currentSong))));
            currentSong = mostSleep[index];
            currentSlider = 0;
            notifyParent();
          },
          child: Container(
            margin: EdgeInsets.all(10),
            width: 50,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: mostSleep[index].color,
                      blurRadius: 1,
                      spreadRadius: 0.3)
                ],
                image: DecorationImage(
                    image: AssetImage(mostSleep[index].image),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mostSleep[index].name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(mostSleep[index].singer,
                      style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class TrackWidget3 extends StatelessWidget {
  final Function() notifyParent;
  TrackWidget3(this.notifyParent);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mostRelax.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => MusicPlayer(currentSong))));
            currentSong = mostRelax[index];
            currentSlider = 0;
            notifyParent();
          },
          child: Container(
            margin: EdgeInsets.all(10),
            width: 50,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: mostRelax[index].color,
                      blurRadius: 1,
                      spreadRadius: 0.3)
                ],
                image: DecorationImage(
                    image: AssetImage(mostRelax[index].image),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mostRelax[index].name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(mostRelax[index].singer,
                      style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class TrackWidget4 extends StatelessWidget {
  final Function() notifyParent;
  TrackWidget4(this.notifyParent);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mostCheerUp.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => MusicPlayer(currentSong))));
            currentSong = mostCheerUp[index];
            currentSlider = 0;
            notifyParent();
          },
          child: Container(
            margin: EdgeInsets.all(10),
            width: 50,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: mostCheerUp[index].color,
                      blurRadius: 1,
                      spreadRadius: 0.3)
                ],
                image: DecorationImage(
                    image: AssetImage(mostCheerUp[index].image),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mostCheerUp[index].name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(mostCheerUp[index].singer,
                      style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
