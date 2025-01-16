import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/hotel_list_view_item.dart';

class HotelGridView extends StatelessWidget {
  const HotelGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 24,
            crossAxisSpacing: 16,
            childAspectRatio: 171 / 178),
        itemBuilder: (context, index) {
          return const HotelListViewItem(title: "Cairo");
        });
  }
}