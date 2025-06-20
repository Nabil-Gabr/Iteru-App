import 'package:flutter/material.dart';
import 'package:iteru_app/modules/hotels/domain/entity/hotel_entity.dart';
import 'package:iteru_app/modules/hotels/presenation/views/hotel_details_view.dart';

class HotelItem extends StatelessWidget {
  const HotelItem({
    super.key,
    required this.hotel,
  });

  final HotelEntity hotel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.hotel, color: Colors.orange),
      title: Text(hotel.name),
      subtitle: Text(hotel.address),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        Navigator.pushNamed(
          context,
          HotelDetailsView.routeName,
          arguments: hotel,
        );
      },
    );
  }
}