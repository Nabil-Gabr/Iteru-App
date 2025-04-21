import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';
import 'package:iteru_app/modules/home/domain/entites/hotel_item_entity.dart';
import 'package:iteru_app/modules/hotels/presenation/views/hotel_details_view.dart';

class HotelListViewItem extends StatelessWidget {
  const HotelListViewItem({
    super.key,
    required this.hotelItemEntity,
  });
  final HotelItemEntity hotelItemEntity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(HotelDetailsView.routeName,
            arguments: hotelItemEntity);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(hotelItemEntity.image),
            fit: BoxFit.cover,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(12),
                  // gradient: LinearGradient(
                  //   begin: Alignment.topLeft, // بداية التدرج
                  //   end: Alignment.bottomRight, // نهاية التدرج
                  //   colors: [
                  //     Color(0xFF87CEFA), // Sky Blue (لون أزرق فاتح)
                  //     Color(0xFFB0E0E6), // Powder Blue (لون أزرق باودر)
                  //     Color(0xFFFFFFFF), // White (أبيض لمسة سماوية)
                  //   ],
                  // ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.amber,
                      size: 14,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      hotelItemEntity.location,
                      style: AppTextStyles.bold16n(context),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   hotelItemEntity.title,
                    //   style: AppTextStyles.bold18(context),
                    // ),
                    const SizedBox(height: 4),
                    Text(
                      hotelItemEntity.subTitle,
                      style: AppTextStyles.bold14(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
