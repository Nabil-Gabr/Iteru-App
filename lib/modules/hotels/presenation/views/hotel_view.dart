import 'package:flutter/material.dart';
import 'package:iteru_app/modules/hotels/presenation/views/widgets/hotel_view_body.dart';

class HotelView extends StatelessWidget {
  const HotelView({super.key});

  static const String routeName = 'HotelView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const HotelViewBody(),
    );
  }
}
