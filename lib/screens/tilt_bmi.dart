import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double _result;
  String _outlet;

  @override
  Widget build(BuildContext context) {
    String data;

    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            height: 500,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextField(
                  controller: _heightController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'height in cm',
                    icon: Icon(Icons.trending_up),
                  ),
                ),
                TextField(
                  controller: _weightController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'weight in kg',
                    icon: Icon(Icons.line_weight),
                  ),
                ),
                RaisedButton(
                  color: Colors.pinkAccent,
                  child: Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: calculateBMI,
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  _result == null
                      ? "Enter Value"
                      : "${_result.toStringAsFixed(2)}",
                  semanticsLabel: _outlet,
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 19.4,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 400.0,
              width: 390.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/airsquat.jpg'),
                  fit: BoxFit.cover,
                ),
              ))
        ])));
  }

  void calculateBMI() {
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);

    double heightSquare = height * height;
    double result = weight / heightSquare;

    _result = result;

    if (_result < 18.5) {
      _outlet = "Underweight";
    } else if (_result >= 18.5 && _result <= 24.9) {
      _outlet = "Healthy";
    } else if (_result >= 25.0 && _result <= 29.9) {
      _outlet = "Overweight";
    } else if (_result > 29.9) {
      _outlet = "Obese";
    }

    setState(() {});
  }
}
