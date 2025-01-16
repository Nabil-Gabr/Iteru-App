import 'package:flutter/material.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/museum_list_view_screen.dart';

class MuseumViewBody extends StatelessWidget {
  const MuseumViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: MuseumListViewScreen(),
    );
  }
}