import 'package:flutter/material.dart';
import 'package:iteru_app/modules/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  //routeName
  static const String routeName = 'SplashView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //body
      body: SplashViewBody(),
    );
  }
}
