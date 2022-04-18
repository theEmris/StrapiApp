import 'package:flutter/material.dart';
import 'package:my_app/screens/SignInPage.dart';
import 'package:my_app/screens/intrancePage.dart';
import 'package:my_app/screens/sIgnUpPage.dart';
import 'package:my_app/widgets/bottomNavBar.dart';

class RouterProvider {
  Route?  onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => BottomNavBar());

      case "/intrance":
        return MaterialPageRoute(builder: (context) => IntrancePage());

      case "/signIn":
        return MaterialPageRoute(builder: (context) => SignInPage());
      case "/signUp":
        return MaterialPageRoute(builder: (context) => SignUpPage());
    }
  }
}






