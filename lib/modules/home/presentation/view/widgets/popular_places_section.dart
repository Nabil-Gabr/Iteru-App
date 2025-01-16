import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/header_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/popular_places_list_view.dart';

class PopularPlacesSection extends StatelessWidget {
  const PopularPlacesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderSection(
          title: "Popular Places",
          textButton: 'View all',
        ),
        SizedBox(
          height: 16,
        ),
        PopularPlacesListView(),
      ],
    );
  }
}
