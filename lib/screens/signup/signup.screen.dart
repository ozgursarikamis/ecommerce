import 'package:ecommerce/screens/signup/components/body.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key key}) : super(key: key);
  static String routeName = "/signup";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Body(),
    );
  }
}
