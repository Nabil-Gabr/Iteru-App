import 'package:flutter/material.dart';
import 'package:iteru_app/core/helpers/adaptive_layout.dart';
import 'package:iteru_app/layouts/desktop/desktop_layout.dart';
import 'package:iteru_app/layouts/mobile/mobile_layout.dart';
import 'package:iteru_app/layouts/tablet/tablet_layout.dart';

class Layouts extends StatelessWidget {
  const Layouts({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const MobileLayout(), 
      tabletLayout: (context) => const TabletLayout(), 
      desktopLayout: (context) =>  const DesktopLayout(),
    );
  }
}