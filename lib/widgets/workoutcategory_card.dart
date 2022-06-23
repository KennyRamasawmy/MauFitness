import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:MauFitness/constants.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String title;
  final Function press;
  const CategoryCard({
    Key key,
    this.image,
    this.title,
    this.press,
    DecorationImage image1,
    MainAxisAlignment mainAxisAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 202, 196, 243), //change
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(color: Colors.white, offset: Offset(-10, -10), blurRadius: 10),
            BoxShadow(
            color: Colors.purple.withOpacity(.50),
            offset: Offset(4, 4),
            blurRadius: 15)
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
                  //Spacer(),
                  Image.asset(
                    image,
                    fit: BoxFit.fill,
                    ),
                  //Spacer(),

                  Text(
                    title,
                    textAlign: TextAlign.right,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 25),
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
