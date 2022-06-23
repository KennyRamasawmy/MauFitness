import 'package:flutter/material.dart';
import 'package:MauFitness/providers/meals.dart';
import 'package:MauFitness/screens/categories_page.dart';
import 'package:MauFitness/screens/category_meals_page.dart';
import 'package:MauFitness/screens/filters_page.dart';
import 'package:MauFitness/screens/meal_details_page.dart';
import 'package:MauFitness/screens/tabs_page.dart';
import 'package:MauFitness/screens/tips.dart';
import 'package:provider/provider.dart';

class Nutrition extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Meals()),
      ],
      builder: (_, __) => MaterialApp(
        title: 'Make My Meal',
        theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.white,
          canvasColor: Colors.white,
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                bodyText2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                headline6: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.normal,
                ),
                button: TextStyle(
                  fontSize: 20,
                ),
              ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        // home: TabsPage(),
        initialRoute: '/',
        routes: {
          '/': (ctx) => TabsPage(), // Home or Default Route.
          TabsPage.routeName: (ctx) => TabsPage(),
          CategoryMealsPage.routeName: (ctx) => CategoryMealsPage(),
          MealDetailsPage.routeName: (ctx) => MealDetailsPage(),
          FiltersPage.routeName: (ctx) => FiltersPage(),
          tipping.routeName: (ctx) => tipping(),
        },

        // onGenerateRoute takes a function which executes for any named navigation action
        // (= pushNamed()) for which no registered route is found on the routes table.
        // The function should return a navigation action (e.g. MaterialPageRoute).

        onGenerateRoute: (routeSettings) {
          print(routeSettings.name);
          print(routeSettings.arguments);

          return MaterialPageRoute(
            builder: (ctx) => CategoriesPage(),
          );
        },

        // onUnknownRoute handles unidentified routes when
        // onGenerateRoute is not specified or doesn't return valid navigation action.
        onUnknownRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (ctx) => CategoriesPage(),
          );
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
