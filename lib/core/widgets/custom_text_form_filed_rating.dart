import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';

class CustomTextFormFiledRating extends StatelessWidget {
  final TextEditingController textEditingController;

  const CustomTextFormFiledRating({
    super.key,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 10,
      controller: textEditingController,
      decoration: const InputDecoration(
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: Colors.amber, width: 1),
        ),
        hintStyle: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: AppColors.captionColor),
      ),
    );
  }
}
