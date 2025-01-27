import 'package:flutter/material.dart';
import 'package:iteru_app/modules/tourism_tybpes/presentation/views/widgest/tourism_view_body.dart';

class TourismTypesView extends StatelessWidget {
  const TourismTypesView({super.key});
  //routeName
  static const String routeName = 'TourismTypesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: null,
          
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Tourism Types",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: TourismViewody(),
        ));
  }
}
