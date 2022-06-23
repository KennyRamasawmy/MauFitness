import 'package:flutter/material.dart';
import 'package:MauFitness/widgets/Nut_Facts.dart';
import 'package:provider/provider.dart';

// import '../widgets/steps_list.dart';
import '../widgets/ingredients_list.dart';
import '../providers/meals.dart';

import '../data/dummy_data.dart';

class MealDetailsPage extends StatelessWidget {
  static const routeName = '/meal-details';

  Widget _buildListTitle(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 25.0),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    // final mealsData = Provider.of<Meals>(context, listen: false);
    // final selectedMeal = mealsData.getMealById(mealId);

    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 105, 164, 63),
        title: Text(
          selectedMeal.title,
          style: TextStyle(
            fontSize: 27,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                  if (wasSynchronouslyLoaded) {
                    return child;
                  } else {
                    return AnimatedSwitcher(
                      duration: const Duration(milliseconds: 1000),
                      child: frame != null
                          ? child
                          : Center(child: CircularProgressIndicator()),
                    );
                  }
                },
                fit: BoxFit.cover,
              ),
            ),
            _buildListTitle(context, 'Ingredients'),
            IngredientsList(
              ingredients: selectedMeal.ingredients,
              width: 400.0,
            ),
            Divider(),
            _buildListTitle(context, 'Steps'),
            // StepsList(
            //   steps: selectedMeal.steps,
            //   width: double.infinity,
            // ),
            for (var index = 0; index < selectedMeal.steps.length; index++)
              new ListTile(
                leading: CircleAvatar(
                  child: Text("${index + 1}"),
                ),
                title: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      selectedMeal.steps[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  elevation: 0,
                ),
              ),
            Divider(),
            _buildListTitle(context, 'Nutrition Facts'),
            factsList(
              facts: selectedMeal.facts,
              facts2: selectedMeal.facts2,
              facts3: selectedMeal.facts3,
              facts4: selectedMeal.facts4,
              width: 600.0,
              //height: 600.0,
            ),
          ],
        ),
      ),
    );
  }
}
