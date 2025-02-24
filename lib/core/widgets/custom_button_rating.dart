import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';

class CustomButtonRating extends StatelessWidget {
  final void Function() onPresses;
  const CustomButtonRating({
    super.key,
    required this.onPresses,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPresses,
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              textStyle: const TextStyle(fontSize: 16),
              foregroundColor: Colors.white),
          child: const Text("Add your review"),
        ));
  }
}