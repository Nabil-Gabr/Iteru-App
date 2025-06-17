import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';
import 'package:iteru_app/modules/hotels/domain/entity/hotel_entity.dart';
import 'package:url_launcher/url_launcher.dart';

class HotelDetailsViewBody extends StatelessWidget {
  const HotelDetailsViewBody({super.key, required this.hotelEntity});
  final HotelEntity hotelEntity;

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        title: Text(hotelEntity.name),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("🏨 Address: ${hotelEntity.address}", style: AppTextStyles.bold14(context)),
            Text("📍 City: ${hotelEntity.city}, ${hotelEntity.state}", style: AppTextStyles.medium20(context)),
            Text("⭐ Stars: ${hotelEntity.starCount}"),
            Text("🌟 Ratings: ${hotelEntity.ratingCount}"),
            Text("📞 Phone: ${hotelEntity.phone}"),
            Text("📧 Email: ${hotelEntity.email}"),
            const SizedBox(height: 10),
            TextButton.icon(
              onPressed: () {
                launchUrl(Uri.parse(hotelEntity.url));
              },
              icon: const Icon(Icons.language),
              label: const Text("Visit Website"),
            ),
          ],
        ),
      ),
    );
  }
}