import 'package:flutter/material.dart';
import 'package:iteru_app/modules/hotels/domain/entity/hotel_entity.dart';
import 'package:iteru_app/modules/hotels/presenation/views/widgets/hotel_details_view_body.dart';

class HotelDetailsView extends StatelessWidget {
  const HotelDetailsView({super.key, required this.hotelEntity});
  final HotelEntity hotelEntity;
  
  static const String routeName='HotelDetailsView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: HotelDetailsViewBody(hotelEntity: hotelEntity,),
    );
  }
}