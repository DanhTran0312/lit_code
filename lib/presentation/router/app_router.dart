import 'package:flutter/material.dart';
import 'package:lit_code/presentation/router/initial_route_builder.dart';
import 'package:lit_code/presentation/screens/screens.dart';

class AppRouter {
  AppRouter();

  Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const InitialRouteBuilder(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (_) => SignInScreen(),
        );
      case '/signup':
        return MaterialPageRoute(
          builder: (_) => SignUpScreen(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Container(),
        );
    }
  }
}
