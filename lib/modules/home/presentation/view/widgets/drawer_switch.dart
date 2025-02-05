import 'package:flutter/material.dart';

class DrawerSwitch extends StatefulWidget {
  const DrawerSwitch({super.key});

  @override
  State<DrawerSwitch> createState() => _DrawerSwitchState();
}

class _DrawerSwitchState extends State<DrawerSwitch> {
  bool light = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: const Color(0xffFF8400),

      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
