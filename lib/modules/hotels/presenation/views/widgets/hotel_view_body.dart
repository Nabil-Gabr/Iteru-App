import 'package:flutter/material.dart';
import 'package:iteru_app/modules/hotels/presenation/views/widgets/hotel_grid_view.dart';

class HotelViewBody extends StatelessWidget {
  const HotelViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: HotelGridView(),
    );
  }
}
