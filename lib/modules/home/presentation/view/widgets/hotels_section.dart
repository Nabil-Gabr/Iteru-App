import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/header_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/hotel_list_view.dart';
import 'package:iteru_app/modules/hotels/presenation/views/hotel_view.dart';

class HotelsSection extends StatelessWidget {
  const HotelsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderSection(
          title: 'Hotels',
          textButton: 'View all',
          onTap: () {
            Navigator.of(context).pushNamed(HotelView.routeName);
          },
        ),
        const SizedBox(
          height: 16,
        ),
        const HotelListView(),
      ],
    );
  }
}
