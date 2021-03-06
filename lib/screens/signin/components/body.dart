import 'package:ecommerce/components/NoAccountRow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecommerce/size_config.dart';
import 'package:ecommerce/screens/signin/components/signin.form.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getPPSWidth(20)),
          child: Column(
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getPPSWidth(28),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Sign in with your email and password \nor continue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              SignForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(icon: "assets/icons/facebook-2.svg", press: () {}),
                  SocialCard(
                      icon: "assets/icons/google-icon.svg", press: () {}),
                  SocialCard(icon: "assets/icons/twitter.svg", press: () {}),
                ],
              ),
              SizedBox(height: getPPSHeight(20)),
              NoAccountRow()
            ],
          ),
        ),
      ),
    );
  }
}

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key key,
    this.icon,
    this.press,
  }) : super(key: key);

  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          padding: EdgeInsets.all(getPPSWidth(12)),
          height: getPPSHeight(40),
          width: getPPSWidth(40),
          decoration:
              BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
          child: SvgPicture.asset(icon)),
    );
  }
}
