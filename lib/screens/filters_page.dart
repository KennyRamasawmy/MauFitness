import 'package:MauFitness/widgets/side_nav_bar.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:MauFitness/screens/categories_page.dart';

import 'package:provider/provider.dart';

import '../providers/meals.dart';
import '../models/filter.dart';

class FiltersPage extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersPageState createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  // var _glutenFree = Filters.glutenFree;
  // var _drinks = Filters.drinks;
  // var _vegetarian = Filters.vegetarian;
  // var _lactoseFree = Filters.lactoseFree;

  @override
  Widget build(BuildContext context) {
    var mealsData = Provider.of<Meals>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Filters",
            style: TextStyle(
                fontSize: 27,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w700)),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0), size: 40),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: FloatingActionButton.extended(
          onPressed: () {
            mealsData.filterMeals();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                width: 300,
                content: const Text(
                  'Your meals have been adjusted!',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                behavior: SnackBarBehavior.floating,
              ),
            );
          },
          label: Text(
            'SAVE',
            style: Theme.of(context).textTheme.button,
          ),
          icon: Icon(Icons.save),
          backgroundColor: Color.fromARGB(255, 25, 162, 64),
          isExtended: true,
          tooltip: 'Save Filters',
        ),
      ),
      endDrawer: NavDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              "Adjust your meals!",
              style:
                  Theme.of(context).textTheme.headline6.copyWith(fontSize: 25),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                Divider(),

                // Glutten Free Toggle Button
                SwitchListTile(
                    activeColor: Color.fromARGB(255, 22, 211, 75),
                    title: Text("Glutten Free"),
                    subtitle: Text("Only include gluten free meals."),
                    value: Filters.glutenFree,
                    onChanged: (newValue) {
                      setState(() {
                        Filters.glutenFree = newValue;
                        Filters.isChanged = true;
                      });

                      final player = AudioCache();
                      player.play(
                        'click/filterclick.mp3',
                        volume: 500.0,
                        mode: PlayerMode.MEDIA_PLAYER,
                      );
                    }),
                SizedBox(
                  height: 20,
                ),
                Divider(),

                // Vegan Free Toggle Button
                SwitchListTile(
                    activeColor: Color.fromARGB(255, 22, 211, 75),
                    title: Text("Drinks"),
                    subtitle: Text("Only include drinks."),
                    value: Filters.drinks,
                    onChanged: (newValue) {
                      setState(() {
                        Filters.drinks = newValue;
                        Filters.isChanged = true;
                      });
                      final player = AudioCache();
                      player.play(
                        'click/filterclick.mp3',
                        volume: 500.0,
                        mode: PlayerMode.MEDIA_PLAYER,
                      );
                    }),
                SizedBox(
                  height: 20,
                ),
                Divider(),

                // Vegetarian Free Toggle Button
                SwitchListTile(
                    activeColor: Color.fromARGB(255, 22, 211, 75),
                    title: Text("Vegetarian"),
                    subtitle: Text("Only include vegetarian meals."),
                    value: Filters.vegetarian,
                    onChanged: (newValue) {
                      setState(() {
                        Filters.vegetarian = newValue;
                        Filters.isChanged = true;
                      });
                      final player = AudioCache();
                      player.play(
                        'click/filterclick.mp3',
                        volume: 500.0,
                        mode: PlayerMode.MEDIA_PLAYER,
                      );
                    }),
                SizedBox(
                  height: 20,
                ),
                Divider(),

                // Lactose Free Toggle Button
                SwitchListTile(
                    activeColor: Color.fromARGB(255, 22, 211, 75),
                    title: Text("Spice Free"),
                    subtitle: Text("Only include spice free meals."),
                    value: Filters.spicefree,
                    onChanged: (newValue) {
                      setState(() {
                        Filters.spicefree = newValue;
                        Filters.isChanged = true;
                      });
                      final player = AudioCache();
                      player.play('click/filterclick.mp3',
                          volume: 500.0, mode: PlayerMode.MEDIA_PLAYER);
                    }),
                SizedBox(
                  height: 20,
                ),
                Divider(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
