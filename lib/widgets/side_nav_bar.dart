import 'package:MauFitness/main.dart';
import 'package:MauFitness/meditateHome.dart';
import 'package:MauFitness/screens/Cardio.dart';
import 'package:MauFitness/screens/Lower_body.dart';
import 'package:MauFitness/screens/Nutrition.dart';
import 'package:MauFitness/screens/TrophyLockCA.dart';
import 'package:MauFitness/screens/Upper_body.dart';
import 'package:MauFitness/screens/filters_page.dart';
import 'package:MauFitness/screens/tips.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:alan_voice/alan_voice.dart';

 _launchURL() async {
  const _url = ('https://accounts.google.com/');
  if (await canLaunch(_url)) {
    return await launch(
      _url,
      forceWebView: true,
      enableJavaScript: true
      );
  } else {
    throw 'Could not launch $_url';
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          //first container for photo
          new Container(
            height: 280,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/icons/fitnesslogoMAUVE.jpg'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.rectangle,
            ),
          ),

          //second container for the navbar
          Container(
            color: Colors.white,
            child: Column(children: [

          ListTile(
            title: Text('Profile'),
            leading: Icon(Icons.account_circle_outlined),
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return _launchURL();
                  }),
                );
            },
          ),

          ListTile(
            title: Text('Achievements'),
            leading: Icon(Icons.military_tech_sharp),
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return AchieveScreenLockCA();
                  }),
                );
            },
          ),

          Theme(
            data: ThemeData(dividerColor: Colors.transparent),
            child: ExpansionTile(
              title: Text('Workout'),
              leading: Icon(Icons.fitness_center),
              children: <Widget>[
                GestureDetector(
                  child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                      decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                      ),
                        child: Card(
                          color: Colors.white,
                          child: Center(
                            child: Text("Upper Body"))))),
                            onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return UpperBody();
                              }),
                            );
                          },
                ),
                SizedBox(height: 7,),
                 GestureDetector(
                   child: SizedBox(
                      width: 250,
                      height: 35,
                      child: Container(
                        decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                        ),
                          child: Card(child: Center(child: Text("Lower Body"))))),
                   onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return LowerBody();
                              }),
                            );
                          },
                ),
                SizedBox(height: 7,),
                 GestureDetector(
                   child: SizedBox(
                      width: 250,
                      height: 35,
                      child: Container(
                        decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                        ),
                          child: Card(child: Center(child: Text("Cardio"))))),
                   onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Cardio();
                              }),
                            );
                          },
                ),
        ],
      ),
      ),
          
      ExpansionTile(
              title: Text('Nutrition'),
              leading: Icon(Icons.restaurant),
              children: <Widget>[
                GestureDetector(
                  child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                      decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                      ),
                        child: Card(child: Center(child: Text("Healthy Meals"))))),
                onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Nutrition();
                              }),
                            );
                          },
                ),
                SizedBox(height: 7,),
                 GestureDetector(
                   child: SizedBox(
                      width: 250,
                      height: 35,
                      child: Container(
                        decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                        ),
                          child: Card(child: Center(child: Text("Filter"))))),
                   onTap: () {
                            Navigator.of(context).pushReplacementNamed(FiltersPage.routeName);
                          },
                ),
                SizedBox(height: 7,),
                 GestureDetector(
                   child: SizedBox(
                      width: 250,
                      height: 35,
                      child: Container(
                        decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                        ),
                          child: Card(child: Center(child: Text("Nutrition Tips"))))),
                   onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return tipping();
                              }),
                            );
                          },
                ),
        ],
      ),
      ExpansionTile(
              title: Text('Meditation'),
              leading: Icon(Icons.self_improvement_rounded),
              children: <Widget>[
                GestureDetector(
                  child: SizedBox(
                    width: 250,
                    height: 35,
                    child: Container(
                      decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                      ),
                        child: Card(child: Center(child: Text("Breathing Exercises"))))),
                onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return mHomePage();
                              }),
                            );
                          },
                ),
                SizedBox(height: 7,),
                 GestureDetector(
                   child: SizedBox(
                      width: 250,
                      height: 35,
                      child: Container(
                        decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                        ),
                          child: Card(child: Center(child: Text("Sleep"))))),
                   onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return mHomePage2();
                              }),
                            );
                          },
                ),
                SizedBox(height: 7,),
                 GestureDetector(
                   child: SizedBox(
                      width: 250,
                      height: 35,
                      child: Container(
                        decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                        ),
                          child: Card(child: Center(child: Text("Relax"))))),
                   onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return mHomePage3();
                              }),
                            );
                          },
                ),
                SizedBox(height: 7,),
                 GestureDetector(
                   child: SizedBox(
                      width: 250,
                      height: 35,
                      child: Container(
                        decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                        ),
                          child: Card(child: Center(child: Text("Cheer Up"))))),
                   onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return mHomePage4();
                              }),
                            );
                          },
                          ),
                  ],
                ),

                ListTile(
                      title: Text('Log Out'),
                      leading: Icon(Icons.logout),
                      onTap: () {
                        signOut();
                      },
                    ),
                ],
                )

            ),
          ]
    ));

  }
}

