import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/Theme/language_cubit.dart';
import 'package:iteru_app/core/Theme/theme_cubit.dart';

class DrawerSwitch extends StatefulWidget {
  const DrawerSwitch({super.key, required this.themeMode});
  final ThemeMode themeMode;

  @override
  State<DrawerSwitch> createState() => _DrawerSwitchState();
}

class _DrawerSwitchState extends State<DrawerSwitch> {
  bool light = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: widget.themeMode == ThemeMode.dark,
      activeColor: const Color(0xffFF8400),
      onChanged: (value) {
        context.read<ThemeCubit>().toggleTheme();
      },
    );
  }
}


//1
class DrawerSwitchLanguage extends StatefulWidget {
  const DrawerSwitchLanguage({super.key});

  @override
  State<DrawerSwitchLanguage> createState() => _DrawerSwitchLanguageState();
}

class _DrawerSwitchLanguageState extends State<DrawerSwitchLanguage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, Locale>(
      builder: (context, locale) {
        return Switch(
          value: locale.languageCode == 'ar',
          activeColor: const Color(0xffFF8400),
          onChanged: (value) {
            context.read<LanguageCubit>().toggleLanguage();
          },
        );
      },
    );
  }
}

