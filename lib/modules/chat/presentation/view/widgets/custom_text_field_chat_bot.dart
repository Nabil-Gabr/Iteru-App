import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';

class CustomTextFieldChatBot extends StatelessWidget {
  const CustomTextFieldChatBot({
    super.key,
    this.onSubmitted,
    this.controller,
    this.prefixIcon,
    this.onTap,
  });

  final void Function(String)? onSubmitted;
  final TextEditingController? controller;
  final void Function()? onTap;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        controller: controller,
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
          hintText: 'Send Message',
          suffixIcon: GestureDetector(
            onTap: onTap,
            child: const Icon(
              Icons.send,
              color: AppColors.primaryColor,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: AppColors.primaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: AppColors.primaryColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: AppColors.primaryColor,
            ),
          ),
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}

