import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/home/domain/entites/hotel_item_entity.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/hotel_list_view_item.dart';

class HotelListView extends StatelessWidget {
  const HotelListView({super.key});
  static const List<HotelItemEntity> hotelItemList = [
    HotelItemEntity(
        title: "Explore Cairo",
        image: Assets.imagesCairo,
        location: 'Cairo',
        subTitle: 'Discover amazing Hotels'),
    HotelItemEntity(
        title: "Explore Alexsandria",
        image: Assets.imagesAlexandria,
        location: 'Alexsandria',
        subTitle: 'Discover amazing Hotels'),
    HotelItemEntity(
        title: "Explore Luxor",
        image: Assets.imagesHurghada,
        location: 'Luxor',
        subTitle: 'Discover amazing Hotels'),
    
  ];
  @override
  Widget build(BuildContext context) {
    double hieght = MediaQuery.sizeOf(context).height;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: hotelItemList.map((e) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SizedBox(
              height: hieght * .22,
              child: AspectRatio(
                aspectRatio: 148 / 154,
                child: HotelListViewItem(
                  hotelItemEntity: e,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
