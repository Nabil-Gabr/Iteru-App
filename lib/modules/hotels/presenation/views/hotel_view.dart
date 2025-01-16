import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/hotel_list_view_item.dart';

class HotelView extends StatelessWidget {
  const HotelView({super.key});

  static const String routeName = 'HotelView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: 20,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 16,
                childAspectRatio: 171 / 178),
            itemBuilder: (context, index) {
              return const HotelListViewItem(title: "Cairo");
            }),
      ),
    );
  }
}
