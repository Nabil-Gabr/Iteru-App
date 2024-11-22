import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.active});
  final bool active;

  @override
  Widget build(BuildContext context) {
    //dot indicator
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: active ? 28 : 12,
      height: 5,
      decoration: BoxDecoration(
          color: active ? AppColors.primaryColor : AppColors.blackColor,
          borderRadius: const BorderRadius.all(Radius.circular(8))),
    );
  }
}
