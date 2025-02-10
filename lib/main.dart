import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/Theme/theme_cubit.dart';
import 'package:iteru_app/core/helpers/functions/on_generate_route.dart';
import 'package:iteru_app/core/services/custom_bloc_observer.dart';
import 'package:iteru_app/core/services/get_it_service.dart';
import 'package:iteru_app/core/cache/shared_preferences_singleton.dart';
import 'package:iteru_app/modules/home/presentation/view/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelpe.init();
  Bloc.observer = CustomBlocObserver();
  setupGetIt();
  runApp(const IteruApp());
}

class IteruApp extends StatelessWidget {
  const IteruApp({super.key});

  @override
  Widget build(BuildContext context) {
    //1-BlocProvider(theme)
    return BlocProvider(
      create: (context) => ThemeCubit(),
      //2-BlocBuilder(theme)
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp(
            themeMode: themeMode,
            //Theme App
            theme: ThemeData(
              brightness: Brightness.light,
            scaffoldBackgroundColor: Colors.white, // خلفية Light Mode
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
            scaffoldBackgroundColor: const Color(0xff1F1D2B), // خلفية Dark Mode
            ),

            // debugShowCheckedModeBanner = false
            debugShowCheckedModeBanner: false,

            //onGenerateRoute
            onGenerateRoute: onGenerateRoute,

            //initialRoute
            initialRoute: HomeView.routeName,
          );
        },
      ),
    );
  }
}
