import 'package:crescore/pages/games_page.dart';
import 'package:crescore/pages/grades_page.dart';
import 'package:flutter/material.dart';

class PageRoutes {
  static const String grades = GradesPage.routeName;
  static const String games = GamesPage.routeName;

  static PageRouteBuilder createBuilder(RouteSettings settings) {
    var begin = const Offset(0.7, 0.0);
    var end = Offset.zero;
    var tween = Tween(begin: begin, end: end).chain(
      CurveTween(curve: Curves.linear),
    );

    var duration = const Duration(milliseconds: 150);

    return PageRouteBuilder(
        settings: settings,
        pageBuilder: (_, __, ___) {
          switch (settings.name) {
            case PageRoutes.games:
              return const GamesPage();
            case PageRoutes.grades:
              return const GradesPage();
            default:
              return const GamesPage();
          }
        },
        transitionDuration: duration,
        reverseTransitionDuration: duration,
        transitionsBuilder: (_, animation, ___, widget) =>
            SlideTransition(position: tween.animate(animation), child: widget));
  }
}
