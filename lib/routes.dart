import 'package:ecommerce/screens/forgot.password/forgot.password.dart';
import 'package:ecommerce/screens/login.success/login.success.screen.dart';
import 'package:ecommerce/screens/signup/signup.screen.dart';
import 'package:flutter/material.dart';
import 'screens/signin/signin.dart';
import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignupScreen.routeName: (context) => SignupScreen()
};
