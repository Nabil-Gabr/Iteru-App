import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/helpers/functions/on_generate_route.dart';
import 'package:iteru_app/core/services/custom_bloc_observer.dart';
import 'package:iteru_app/core/services/get_it_service.dart';
import 'package:iteru_app/core/cache/shared_preferences_singleton.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/modules/bottom_navigation_bar/presentation/view/main_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await CacheHelpe.init();
   Bloc.observer=CustomBlocObserver();
  setupGetIt();
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
      initialRoute: MainView.routeName,
    );
  }
}
