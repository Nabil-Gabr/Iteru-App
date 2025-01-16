import 'package:flutter/material.dart';
import 'package:iteru_app/modules/popular_places/presentation/view/widgets/popular_places_view_body.dart';

class PopularPlacesView extends StatelessWidget {
  const PopularPlacesView({super.key});

  static const String routeName = 'PopularPlacesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.0),
        child:  PopularPlacesViewBody(),
      ),
    );
  }
}
