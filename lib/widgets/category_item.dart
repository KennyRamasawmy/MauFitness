import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/category_meals_page.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imaging;
  final Color color;

  CategoryItem({
    @required this.id,
    @required this.title,
    @required this.imaging,
    @required this.color,
  });

  void selectCategory(BuildContext context) {
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (_) {
    //       return CategoryMealsPage(
    //         categoryId: id,
    //         categoryTitle: title,
    //       );
    //     },
    //   ),
    // );
    Navigator.of(context).pushNamed(
      CategoryMealsPage.routeName,
      arguments: {
        'categoryId': id,
        'categoryTitle': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        alignment: Alignment.centerRight,
        child: Text(
          title,
          style: TextStyle(
              fontSize: 22,
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              color: Color.fromARGB(255, 25, 147, 9),
              //background: Colors.red,

              fontWeight: FontWeight.bold),

/*
  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
*/
        ),
        padding: const EdgeInsets.all(.00000001),
        decoration: BoxDecoration(
          borderRadius: new BorderRadius.circular(16.0),
          image: DecorationImage(
            image: AssetImage(imaging),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
