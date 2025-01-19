import 'package:flutter/material.dart';
import 'package:iteru_app/core/widgets/booking_widget.dart';
import 'package:iteru_app/core/widgets/gallery_widget.dart';
import 'package:iteru_app/core/widgets/naivgation_button.dart';
import 'package:iteru_app/core/widgets/over_view_widget.dart';

class ScreenDetailsAction extends StatefulWidget {
  const ScreenDetailsAction({
    super.key,
  });

  @override
  State<ScreenDetailsAction> createState() => _ScreenDetailsActionState();
}

class _ScreenDetailsActionState extends State<ScreenDetailsAction> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List item = [
      'Overview',
      'Gallery',
      'Booking',
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: item.asMap().entries.map((e) {
              var index = e.key;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                    // widget.onItemTapped(index);
                  });
                },
                child: NaivgationButton(
                  isSelected: selectedIndex == index,
                  text: item[index],
                ),
              );
            }).toList(),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        selectedIndex == 0
            ? const OverViewWidget()
            : selectedIndex == 1
                ? const GalleryWidget()
                :const  BookingWidget(),
      ],
    );
  }
}
