import 'package:ecommerce/screens/forgot.password/forgot.password.dart';
import 'package:flutter/material.dart';
import 'screens/signin/signin.dart';
import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen()
};
