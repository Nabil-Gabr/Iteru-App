import 'package:flutter/material.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/museum_view_body.dart';

class MuseumView extends StatelessWidget {
  const MuseumView({super.key});

  //routeName
  static const String routeName = 'MuseumView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: null,
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Museum",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: const MuseumViewBody(),
    );
  }
}
