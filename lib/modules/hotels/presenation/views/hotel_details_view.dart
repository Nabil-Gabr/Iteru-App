import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/domain/entites/hotel_item_entity.dart';
import 'package:iteru_app/modules/hotels/presenation/views/widgets/hotel_details_view_body.dart';

class HotelDetailsView extends StatelessWidget {
  const HotelDetailsView({super.key, required this.hotelItemEntity});
  final HotelItemEntity hotelItemEntity;
  
  static const String routeName='HotelDetailsView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: HotelDetailsViewBody(hotelItemEntity: hotelItemEntity,),
    );
  }
}