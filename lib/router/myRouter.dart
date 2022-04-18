import 'package:flutter/material.dart';
import 'package:my_app/widgets/bottomNavBar.dart';

class RouterProvider {
  Route?  onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => BottomNavBar());


    }
  }
}






