import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/header_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/hotel_list_view.dart';

class HotelsSection extends StatelessWidget {
  const HotelsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeaderSection(
          title: 'Hotels',
          textButton: 'View all',
        ),
        SizedBox(
          height: 16,
        ),
        HotelListView(),
      ],
    );
  }
}
