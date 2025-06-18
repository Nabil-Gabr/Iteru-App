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
        title: "Explore Luxor",
        image: Assets.imagesLox,
        location: 'Luxor',
        subTitle: 'Discover amazing Hotels'),
    HotelItemEntity(
        title: "Explore Giza",
        image: Assets.imagesGiza,
        location: 'Giza',
        subTitle: 'Discover amazing Hotels'),
    HotelItemEntity(
        title: "Explore Hurghada",
        image: Assets.imagesHurghada,
        location: 'Hurghada',
        subTitle: 'Discover amazing Hurghada'),
    HotelItemEntity(
        title: "Explore Marsa Alam",
        image: Assets.imagesMarsaAlam,
        location: 'Marsa Alam',
        subTitle: 'Discover amazing Marsa Alam'),
    HotelItemEntity(
        title: "Explore Sharm El Sheikh",
        image: Assets.imagesHurghadaNew,
        location: 'Sharm El Sheikh',
        subTitle: 'Discover amazing Sharm El Sheikh'),
    HotelItemEntity(
        title: "Explore Aswan",
        image: Assets.imagesAswan,
        location: 'Aswan',
        subTitle: 'Discover amazing Aswan'),
    HotelItemEntity(
      title: "Explore Alexandria",
      image: Assets.imagesAlexandriNew,
      location: 'Alexandria',
      subTitle: 'Discover amazing Alexandria'),
    
  ];
  @override
  Widget build(BuildContext context) {
    double hieght = MediaQuery.sizeOf(context).height;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: hotelItemList.take(3).map((e) {
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
