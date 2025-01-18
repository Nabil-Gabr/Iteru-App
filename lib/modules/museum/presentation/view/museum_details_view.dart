import 'package:flutter/material.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/museum_details_view_body.dart';

class MuseumDetailsView extends StatelessWidget {
  const MuseumDetailsView({super.key});
  static const String routeName = 'MuseumDetailsView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const MuseumDetailsViewBody(),
    );
  }
}
