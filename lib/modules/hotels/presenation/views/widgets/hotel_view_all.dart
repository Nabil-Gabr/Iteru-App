import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iteru_app/core/services/get_it_service.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/home/domain/entites/hotel_item_entity.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/hotel_list_view_item.dart';
import 'package:iteru_app/modules/hotels/domain/repo/hotel_repo.dart';
import 'package:iteru_app/modules/hotels/presenation/view_model/cubit/hotel_cubit.dart';

class HotelViewAll extends StatelessWidget {
  const HotelViewAll({super.key});
  static const String routeName = 'HotelViewAll';
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
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return BlocProvider(
      create: (context) => HotelCubit(getIt<HotelRepo>()),
      child: Scaffold(
        appBar: AppBar(
        surfaceTintColor: null,
        forceMaterialTransparency: true,
        elevation: 0,
        backgroundColor: isDarkMode ? AppColors.darkModePrimary : AppColors.whiteColor,
        centerTitle: true,
        title: const Text(
          'Hotels',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: MasonryGridView.count(
      itemCount: hotelItemList.length,
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
       itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? SizedBox(
                        child: AspectRatio(
                            aspectRatio: 172 / 202,
                            child: HotelListViewItem(
                                hotelItemEntity: hotelItemList[index])))
                    : SizedBox(
                        child: AspectRatio(
                            aspectRatio: 172 / 252,
                            child: HotelListViewItem(
                                hotelItemEntity: hotelItemList[index])));
              },
    ))),
      );
  }
}
