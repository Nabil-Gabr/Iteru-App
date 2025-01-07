import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/header_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/museum_list_view.dart';

class MuseumSection extends StatelessWidget {
  const MuseumSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeaderSection(title: 'Museum', textButton: 'View all',),
        SizedBox(
          height: 16,
        ),
        MuseumListView(),
      ],
    );
  }
}