import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/header_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/tourism_types_list_view.dart';
import 'package:iteru_app/modules/tourism_tybpes/presentation/views/tourism_types_view.dart';

class TorismTypeSection extends StatelessWidget {
  const TorismTypeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderSection(
          title: "Tourism Types",
          textButton: 'View all',
          onTap: () {
            Navigator.of(context).pushNamed(TourismTypesView.routeName);
          },
        ),
        const SizedBox(
          height: 16,
        ),
        const TourismTypesListView()
      ],
    );
  }
}
