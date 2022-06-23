import 'package:MauFitness/widgets/side_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:MauFitness/meditateHome.dart';
import 'database.dart';
import 'dart:ui';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:MauFitness/database.dart';

class MakeDashboardItems extends StatefulWidget {
  @override
  _MakeDashboardItemsState createState() => _MakeDashboardItemsState();
}

class _MakeDashboardItemsState extends State<MakeDashboardItems> {
  makeDashboardItem(String title, int index) {
    return Scaffold(
        backgroundColor: Color(0xFFd3cae6),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                child:
                Padding(
                  padding: EdgeInsets.only(right: 15, top: 15),
                  child: Container(
                    width: 150,
                    height: 250,
                    margin: EdgeInsets.only(left: 15),
                    decoration: index == 0 || index == 3 || index == 4
                        ? BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: newRelease[index].color,
                            blurRadius: 1,
                            spreadRadius: 1,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage(newRelease[index].image),
                            fit: BoxFit.cover))
                        : BoxDecoration(borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: newRelease[index].color,
                            blurRadius: 1,
                            spreadRadius: 1,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage(newRelease[index].image),
                            fit: BoxFit.cover)),
                    child: InkWell(
                      onTap: () {
                        if (index == 0) {
                          //1.item
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) => mHomePage())));
                        }
                        if (index == 1) {
                          //2.item
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) => mHomePage2())));
                        }
                        if (index == 2) {
                          //3.item
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) => mHomePage3())));
                        }
                        if (index == 3) {
                          //4.item
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) => mHomePage4())));
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              newRelease[index].name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(newRelease[index].singer,
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
                  ),
                ),
              )
            ]
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      endDrawer: NavDrawer(),
      backgroundColor: Color(0xFFd3cae6),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment(1.10, 1.8),
            child: Container(
              width: 70.0,
              height: 70.0,
              child: Image.asset(
                "assets/images/hamburger.png",
                width: size.width,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Meditation ",
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF9967d6)
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 20),
            child: Text(
              "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
              style: TextStyle(fontSize:14,fontWeight: FontWeight.bold, color: Colors.grey[900],),
            ),
          ),
          const SizedBox(height: 0),
          Expanded(
            child:
            Container(
              height: 500,
              child: GridView.count(
                crossAxisSpacing: 0,
                mainAxisSpacing: (0),
                shrinkWrap: true,
                childAspectRatio: 1/1.5,
                crossAxisCount: 2,
                padding: const EdgeInsets.all(0),

                children: [
                  makeDashboardItem("Breathing Exercise", 0),
                  makeDashboardItem("Sleep", 1),
                  makeDashboardItem("Relax", 2),
                  makeDashboardItem("Cheer Up", 3),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
