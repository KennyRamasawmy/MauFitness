import 'package:MauFitness/cards_design.dart';
import 'package:MauFitness/screens/Menu_Nutrition.dart';
import 'package:MauFitness/screens/workout_board.dart';
import 'package:flutter/material.dart';
import 'package:MauFitness/screens/Nutrition.dart';
import 'package:MauFitness/widgets/category_card.dart';
import 'package:MauFitness/widgets/search_bar.dart';
import 'package:MauFitness/widgets/side_nav_bar.dart';
import 'package:flutter/services.dart';

import 'package:alan_voice/alan_voice.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _HomeScreenState() {
     AlanVoice.addButton(
    //     //"6d7ce584c1382b308f025ab41c8c36e32e956eca572e1d8b807a3e2338fdd0dc/stage",
         "74932a477123567fb7550fc26b4286eb2e956eca572e1d8b807a3e2338fdd0dc/stage",
         buttonAlign: AlanVoice.BUTTON_ALIGN_LEFT);

     AlanVoice.onCommand.add((command) => _handleCommand(command.data));
  }

  _handleCommand(Map<String, dynamic> command) {
    switch (command["command"]) {
      case "home":
        Navigator.pushNamed(context, '/home');
        break;
      case "workout":
        Navigator.pushNamed(context, '/workout');
        break;
      case "upper":
        Navigator.pushNamed(context, '/upper');
        break;
      case "lower":
        Navigator.pushNamed(context, '/lower');
        break;
      case "cardio":
        Navigator.pushNamed(context, '/cardio');
        break;
      case "nutrition":
        Navigator.pushNamed(context, '/nutrition');
        break;
      case "meditation":
        Navigator.pushNamed(context, '/meditation');
        break;
      default:
        debugPrint("Unknown command");
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      endDrawer: NavDrawer(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height,
            decoration: BoxDecoration(
              color: Color(0xFFC5CAE9),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment(1.30, 1.5),
                    child: Container(
                      width: 60.0,
                      height: 50.0,
                      child: Image.asset(
                        "assets/images/hamburger.png",
                        height: 2,
                      ),
                    ),
                  ),
                  Text(
                    "Welcome to\nMauFitness",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  //SearchBar(),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      showSearch(
                        context: context,
                        delegate: MySearchDelegate(),
                      );
                    },
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 2.2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "    Workout",
                          image: "assets/images/workout1.png",
                          press: () {
                            HapticFeedback.heavyImpact();
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return WorkoutBoard();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "     Nutrition",
                          image: "assets/images/nutrition1.png",
                          press: () {
                            HapticFeedback.heavyImpact();
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return menu_nutrition();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "   Meditation",
                          image: "assets/images/meditation1.png",
                          press: () {
                            HapticFeedback.heavyImpact();
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return MakeDashboardItems();
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Home',
    'Workout',
    'Nutrition',
    'Meditation',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var resultz in searchTerms) {
      if (resultz.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(resultz);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var resultz in searchTerms) {
      if (resultz.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(resultz);
      }
    }

    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
            onTap: () {
              query = result;
            },
          );
        });
  }
}
