import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({Key key, this.text, this.image}) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text("ecommerce",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: getPPSWidth(36),
                color: kPrimaryColor,
                fontWeight: FontWeight.bold)),
        Text(text),
        Spacer(),
        Image.asset(
          image,
          height: getPPSHeight(265),
          width: getPPSWidth(235),
          // )
        )
      ],
    );
  }
}
