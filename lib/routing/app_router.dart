import 'package:device_repair/app/drawer/chats/chats.dart';
import 'package:device_repair/app/drawer/settings/account_settings.dart';
import 'package:device_repair/app/drawer/settings/settings.dart';
import 'package:device_repair/app/drawer/tickets/ticket_details.dart';
import 'package:device_repair/app/drawer/tickets/tickets.dart';
import 'package:device_repair/app/root/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:device_repair/app/intro/login.dart';
import 'package:device_repair/app/root/home/home.dart';
import 'package:device_repair/app/src.dart';

class AppRoutes {
  static const src = Source.routeName;

  static const login = LogInScreen.routeName;

  static const setts = SettingsScreen.routeName;
  static const aSetts = AccountSettingsScreen.routeName;

  static const tickets = TicketsScreen.routeName;
  static const tDetails = TicketDetailsScreen.routeName;

  static const chats = ChatsScreen.routeName;

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
      case AppRoutes.setts:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SettingsScreen(),
        );
      case AppRoutes.aSetts:
        return MaterialPageRoute<dynamic>(
          builder: (_) => AccountSettingsScreen(),
        );
      case AppRoutes.tickets:
        return MaterialPageRoute<dynamic>(
          builder: (_) => TicketsScreen(),
        );
      case AppRoutes.tDetails:
        return MaterialPageRoute<dynamic>(
          builder: (_) => TicketDetailsScreen(),
        );
      case AppRoutes.chats:
        return MaterialPageRoute<dynamic>(
          builder: (_) => ChatsScreen(),
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
        return MaterialPageRoute<dynamic>(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Error'),
            ),
          ),
        );
    }
  }
}
