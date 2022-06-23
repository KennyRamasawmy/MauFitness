import 'package:MauFitness/screens/Login/components/background.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final Function press;
  const CategoryCard({
    Key key,
    Text text,
    this.title,
    this.press,
    TextAlign textAlign,
    Background background,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: Colors.red,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding:
                  const EdgeInsets.all(15), //padding around each dashboard icon
              child: Row(
                children: <Widget>[
                  Spacer(),
                  Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.right,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 25),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
