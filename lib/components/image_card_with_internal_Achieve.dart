import 'package:flutter/material.dart';

class ImageCardWithInternalAchieve extends StatelessWidget {
  final String image, title;

  const ImageCardWithInternalAchieve({
    Key key,
    @required this.title,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              this.title,
              style: TextStyle(
                  color: Colors.limeAccent,
                  fontSize: 25.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w200),
            ),
            padding: EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 10.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              color: Colors.grey.withAlpha(900),
            ),
          ),
        ],
      ),
      width: size.width * 0.50,
      height: size.width * 0.50,
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage(this.image), fit: BoxFit.cover),
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
    );
  }
}
