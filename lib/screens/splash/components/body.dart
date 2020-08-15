import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              // Creates a scrollable list that works page by page 
              // using widgets that are created on demand.
              child: PageView.builder(itemBuilder: (context, index) => SplashContent(
                image: "assets/images/splash_1.png",
                text: "Welcome to Tokoto, Let's shop!"
              )),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key, this.text, this.image
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text("TOKOTO",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(36),
                color: kPrimaryColor,
                fontWeight: FontWeight.bold)),
        Text(text),
        Spacer(),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}
