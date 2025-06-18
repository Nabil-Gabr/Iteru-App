// import 'package:flutter/material.dart';
// import 'package:iteru_app/core/utils/app_images.dart';
// import 'package:iteru_app/modules/home/domain/entites/hotel_item_entity.dart';
// import 'package:iteru_app/modules/home/presentation/view/widgets/hotel_list_view_item.dart';

// class HotelGridView extends StatelessWidget {
//   const HotelGridView({
//     super.key,
//   });

//   static const List<HotelItemEntity> hotelItemList = [
//     HotelItemEntity(
//         title: "Explore Cairo",
//         image: Assets.imagesImageTestMohamed,
//         location: 'Cairo',
//         subTitle: 'Discover amazing Hotels'),
//     HotelItemEntity(
//         title: "Explore Alexsandria",
//         image: Assets.imagesImageTestMohamed,
//         location: 'Alexsandria',
//         subTitle: 'Discover amazing Hotels'),
//     HotelItemEntity(
//         title: "Explore Luxor",
//         image: Assets.imagesImageTestMohamed,
//         location: 'Luxor',
//         subTitle: 'Discover amazing Hotels'),
//     HotelItemEntity(
//         title: "Explore Mynia",
//         image: Assets.imagesImageTestMohamed,
//         location: 'Mynia',
//         subTitle: 'Discover amazing Hotels'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//         itemCount: hotelItemList.length,
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             mainAxisSpacing: 24,
//             crossAxisSpacing: 16,
//             childAspectRatio: 171 / 178),
//         itemBuilder: (context, index) {
//           return HotelListViewItem(
//             hotelItemEntity: hotelItemList[index],
//           );
//         });
//   }
// }
