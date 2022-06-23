import 'package:flutter/foundation.dart';

enum Difficulty { Easy, Medium, Hard }

enum Affordability { Cheap, Moderate, Expensive, VeryExpensive }

class Meal {
  final String id;
  final String title;
  final List<String> categories;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> facts;
  final List<String> facts2;
  final List<String> facts3;
  final List<String> facts4;
  final List<String> steps;
  final int duration;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isspicefree;
  final bool isdrinks;
  final bool isVegetarian;

  const Meal({
    @required this.id,
    @required this.title,
    @required this.categories,
    @required this.affordability,
    @required this.duration,
    @required this.steps,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.facts,
    @required this.facts2,
    @required this.facts3,
    @required this.facts4,
    @required this.isGlutenFree,
    @required this.isspicefree,
    @required this.isdrinks,
    @required this.isVegetarian,
  });
}

String getAffordabilityText(affordability) {
  switch (affordability) {
    case Affordability.Cheap:
      return 'Cheap';
      break;
    case Affordability.Moderate:
      return 'Moderate';
      break;
    case Affordability.Expensive:
      return 'Expensive';
      break;
    case Affordability.VeryExpensive:
      return 'Very Expensive';
      break;
    default:
      return 'Unknown';
  }
}
