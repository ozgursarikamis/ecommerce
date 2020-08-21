import 'package:ecommerce/screens/signup/signup.screen.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';

class NoAccountRow extends StatelessWidget {
  const NoAccountRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account ?",
            style: TextStyle(fontSize: getPPSWidth(16))),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignupScreen.routeName),
          child: Text("Sign up",
              style:
                  TextStyle(fontSize: getPPSWidth(16), color: kPrimaryColor)),
        )
      ],
    );
  }
}
