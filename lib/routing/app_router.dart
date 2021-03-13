import 'package:device_repair/app/root/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:device_repair/app/intro/login.dart';
import 'package:device_repair/app/root/home/home.dart';
import 'package:device_repair/app/src.dart';

class AppRoutes {
  static const src = Source.routeName;

  static const login = LogInScreen.routeName;

  static const home = HomeScreen.routeName;
  static const profile = ProfileScreen.routeName;
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.src:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Source(),
        );
      case AppRoutes.login:
        return MaterialPageRoute<dynamic>(
          builder: (_) => LogInScreen(),
        );
      case AppRoutes.home:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomeScreen(),
        );
      case AppRoutes.profile:
        return MaterialPageRoute<dynamic>(
          builder: (_) => ProfileScreen(),
        );

      default:
        // TODO: Throw
        return null;
    }
  }
}
