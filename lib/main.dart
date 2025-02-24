import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:iteru_app/core/Theme/language_cubit.dart';
import 'package:iteru_app/core/Theme/theme_cubit.dart';
import 'package:iteru_app/core/addrating/add_rating_cubit.dart';
import 'package:iteru_app/core/helpers/functions/on_generate_route.dart';
import 'package:iteru_app/core/services/custom_bloc_observer.dart';
import 'package:iteru_app/core/services/get_it_service.dart';
import 'package:iteru_app/core/cache/shared_preferences_singleton.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/generated/l10n.dart';
import 'package:iteru_app/modules/splash/presentation/views/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelpe.init();
  Bloc.observer = CustomBlocObserver();
  setupGetIt();

  final languageCubit = LanguageCubit();
  languageCubit.loadLanguage();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(create: (context) => languageCubit),
        BlocProvider(create: (context)=>AddRatingCubit())
      ],
      child: const IteruApp(),
    ),
  );
}


class IteruApp extends StatelessWidget {
  const IteruApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, Locale>(
      builder: (context, locale) {
        return BlocBuilder<ThemeCubit, ThemeMode>(
          builder: (context, themeMode) {
            return MaterialApp(
              locale: locale,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              themeMode: themeMode,
              theme: ThemeData(
                brightness: Brightness.light,
                scaffoldBackgroundColor: Colors.white,
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark,
                scaffoldBackgroundColor: AppColors.darkModePrimary,
              ),
              debugShowCheckedModeBanner: false,
              onGenerateRoute: onGenerateRoute,
              initialRoute: SplashView.routeName,
            );
          },
        );
      },
    );
  }
}

