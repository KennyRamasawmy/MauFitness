import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:MauFitness/widgets/constants.dart';

class TrophyButton extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  const TrophyButton({
    Key key,
    this.svgSrc,
    this.title,
    this.press,
    DecorationImage image,
    MainAxisAlignment mainAxisAlignment,
  }) : super(key: key);

  get onClicked => null;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      //borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 35.0, left: 40.0, right: 40.0, bottom: 35.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 190, 205, 217).withOpacity(0.4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Material(
            color: Color.fromARGB(0, 24, 24, 157),
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20.0,
                    bottom: 10.0), //padding around each dashboard icon
                child: Column(
                  children: <Widget>[
                    //Spacer(),
                    //SvgPicture.asset(svgSrc),
                    //Spacer(),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 63, 65, 65)),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
