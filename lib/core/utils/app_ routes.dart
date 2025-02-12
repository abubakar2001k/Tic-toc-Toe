import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kati_zero/presentation/splach_screen/spalch_screen.dart';
import 'package:kati_zero/presentation/wining_screen/winning_screen.dart';

import '../../presentation/home_screen/home_screen.dart';
import '../../presentation/leaderboard_screen/leaderboard_screen.dart';

class AppRoutes {
  static const String Splach_screen = '/splach';

  static const String Home_screen = '/home';

  static const String Wining_screen = '/wining';

  static const String Leaderboard_screen = '/leaderboard';

  static Route<dynamic> generateRoute(RouteSettings sittings) {
    switch (sittings.name) {
      case Splach_screen:
        return MaterialPageRoute(builder: (_) => SplachScreen());
      case Wining_screen:
        final winner = sittings.arguments as String;

        return MaterialPageRoute(builder: (_) => WinningScreen(winner: winner,));
      case Home_screen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Leaderboard_screen:
        return MaterialPageRoute(builder: (_) => LeaderboardScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                    body: Center(
                  child: Text("End"),
                )));
    }
  }
}
