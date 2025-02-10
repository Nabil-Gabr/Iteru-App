import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
