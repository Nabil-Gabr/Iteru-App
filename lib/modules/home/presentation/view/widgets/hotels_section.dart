import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/services/get_it_service.dart';
import 'package:iteru_app/generated/l10n.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/header_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/hotel_list_view.dart';
import 'package:iteru_app/modules/hotels/domain/repo/hotel_repo.dart';
import 'package:iteru_app/modules/hotels/presenation/view_model/cubit/hotel_cubit.dart';
import 'package:iteru_app/modules/hotels/presenation/views/widgets/hotel_view_all.dart';

class HotelsSection extends StatelessWidget {
  const HotelsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HotelCubit(getIt<HotelRepo>()),
      child: Column(
        children: [
          HeaderSection(
            title: S.of(context).hotels,
            onTap: () {
              Navigator.of(context).pushNamed(HotelViewAll.routeName);
            },
          ),
          const SizedBox(
            height: 16,
          ),
          const HotelListView(),
        ],
      ),
    );
  }
}
