import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/domain/entites/hotel_item_entity.dart';

class HotelDetailsViewBody extends StatelessWidget {
  const HotelDetailsViewBody({super.key, required this.hotelItemEntity});
  final HotelItemEntity hotelItemEntity;

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('HotelDetailsViewBody'),);
  }
}