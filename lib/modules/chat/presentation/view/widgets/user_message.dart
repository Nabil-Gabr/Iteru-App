import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';

class UserMessage extends StatelessWidget {
  const UserMessage({
    super.key,
    required this.message,
  });
  final String message;

  @override
  Widget build(BuildContext context) {
    return BubbleSpecialThree(
      text: message,
      textStyle: const TextStyle(color: Colors.white, fontSize: 16),
      color: AppColors.primaryColor,
      tail: true,
      isSender: true,
    );
  }
}
