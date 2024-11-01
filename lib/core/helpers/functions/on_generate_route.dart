import 'package:flutter/material.dart';
import 'package:iteru_app/layouts/layouts.dart';
import 'package:iteru_app/modules/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SplashView(),
      );
    case Layouts.routename:
      return MaterialPageRoute(
        builder: (context) => const Layouts(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}
