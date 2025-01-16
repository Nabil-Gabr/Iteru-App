import 'package:flutter/material.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/museum_view_body.dart';

class MuseumView extends StatelessWidget {
  const MuseumView({super.key});
  
  //routeName
  static const String routeName = 'MuseumView';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:const MuseumViewBody(),
    );
  }
}