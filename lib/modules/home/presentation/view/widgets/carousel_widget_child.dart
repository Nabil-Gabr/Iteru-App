import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';

class CarouselWidgetChild extends StatelessWidget {
  const CarouselWidgetChild({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
