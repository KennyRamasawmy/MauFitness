import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/meal_item.dart';
import '../providers/meals.dart';

class CategoryMealsPage extends StatelessWidget {
  static const routeName = '/category-meals';
  final controller = ScrollController();
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsPage({
  //   @required this.categoryId,
  //   @required this.categoryTitle,
  // });

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    String categoryId = routeArgs['categoryId'];
    String categoryTitle = routeArgs['categoryTitle'];

    final mealsData = Provider.of<Meals>(context);
    final categoryMeals = mealsData.getMealsByCategoryId(categoryId);

    return Scaffold(
      /* appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.lightGreen[800],
        title: Text(
          categoryTitle,
          style: TextStyle(
            fontSize: 27,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ), */
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 105, 164, 63),
        title: Text(categoryTitle,
            style: TextStyle(
                fontSize: 27,
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w700)),
        iconTheme:
            IconThemeData(color: Color.fromARGB(255, 255, 255, 255), size: 30),
        leading: BackButton(color: Color.fromARGB(255, 255, 255, 255)),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreenAccent,
        child: Icon(Icons.arrow_upward),
        onPressed: scrollUp,
      ),
      backgroundColor: Color.fromARGB(255, 105, 164, 63),
      body: ListView.builder(
        // padding: EdgeInsets.all(15),
        controller: controller,

        itemBuilder: (ctx, index) {
          final meal = categoryMeals[index];
          return MealItem(
            id: meal.id,
            title: meal.title,
            duration: meal.duration,
            imageUrl: meal.imageUrl,
            affordability: meal.affordability,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }

  void scrollUp() {
    final double start = 0;

    controller.jumpTo(start);
  }
}
