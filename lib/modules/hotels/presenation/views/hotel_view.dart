import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/services/get_it_service.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/modules/hotels/domain/repo/hotel_repo.dart';
import 'package:iteru_app/modules/hotels/presenation/view_model/cubit/hotel_cubit.dart';
import 'package:iteru_app/modules/hotels/presenation/views/widgets/hotel_view_body.dart';

class HotelView extends StatelessWidget {
  const HotelView({
    super.key,
  });

  static const String routeName = 'HotelView';
  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return BlocProvider(
        create: (context) => HotelCubit(getIt<HotelRepo>())..getHotelCairo(),
        child: Scaffold(
          appBar: AppBar(
            surfaceTintColor: null,
            elevation: 0,
            backgroundColor:
                isDarkMode ? AppColors.darkModePrimary : AppColors.whiteColor,
            centerTitle: true,
            title: const Text(
              "Hotels",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          body: const HotelViewBody(),
        ));
  }
}
