import 'package:MauFitness/widgets/side_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'categories_page.dart';
import '../providers/meals.dart';

class TabsPage extends StatefulWidget {
  static const routeName = '/tabs';

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  final List<Map<String, dynamic>> _pages = [
    {
      'page': CategoriesPage(),
      'title': 'Healthy Meals',
    },
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      endDrawer: NavDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(
          _pages[_selectedPageIndex]['title'],
          style: TextStyle(
            fontSize: 27,
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w700,
          ),
        ),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0), size: 40),
      ),
      body: _pages[_selectedPageIndex]['page'],
    );
  }
}
