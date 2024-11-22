import 'package:flutter/material.dart';
import 'package:iteru_app/core/helpers/functions/on_generate_route.dart';
import 'package:iteru_app/core/services/shared_preferences_singleton.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/layouts/layouts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init();
  runApp(const IteruApp());
}

class IteruApp extends StatelessWidget {
  const IteruApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Theme App
      theme: ThemeData(scaffoldBackgroundColor: AppColors.whiteColor),

      // debugShowCheckedModeBanner = false
      debugShowCheckedModeBanner: false,

      //onGenerateRoute
      onGenerateRoute: onGenerateRoute,

      //initialRoute
      initialRoute: Layouts.routename,
    );
  }
}
