import 'package:flutter/material.dart';

class MealInfo extends StatelessWidget {
  final int duration;

  final String affordability;

  MealInfo({
    @required this.duration,
    @required this.affordability,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Icon(Icons.schedule),
              SizedBox(
                width: 6,
              ),
              Text(
                '$duration min',
                style: TextStyle(fontFamily: 'Arial', fontSize: 15),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.attach_money),
              SizedBox(
                width: 6,
              ),
              Text(
                affordability,
                style: TextStyle(fontFamily: 'Arial', fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
