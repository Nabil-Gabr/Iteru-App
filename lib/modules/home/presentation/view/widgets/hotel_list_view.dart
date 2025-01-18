import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/domain/entites/hotel_item_entity.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/hotel_list_view_item.dart';

class HotelListView extends StatelessWidget {
  const HotelListView({super.key});

  @override
  Widget build(BuildContext context) {
    double hieght = MediaQuery.sizeOf(context).height;
    List<HotelItemEntity> hotelItemList = [
      HotelItemEntity(title: "Cairo"),
      HotelItemEntity(title: "Alexsandria"),
      HotelItemEntity(title: "Luxor"),
      HotelItemEntity(title: "Mynia"),
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: hotelItemList.map((e) {
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: SizedBox(
                height: hieght * .22,
                child: AspectRatio(
                  aspectRatio: 148 / 154,
                  child: HotelListViewItem(
                    title: e.title,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
