import 'package:flutter/material.dart';
import 'package:iteru_app/generated/l10n.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/header_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/hotel_list_view.dart';
import 'package:iteru_app/modules/hotels/presenation/views/widgets/hotel_view_all.dart';

class HotelsSection extends StatelessWidget {
  const HotelsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderSection(
          title: S.of(context).hotels,
          onTap: () {
            Navigator.of(context).pushNamed(HotelViewAll.routeName);
          },
        ),
        const SizedBox(height: 16),
        const HotelListView(),
      ],
    );
  }
}

