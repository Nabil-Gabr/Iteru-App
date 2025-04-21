import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/app_images.dart';

class ChatBotIconWidget extends StatelessWidget {
  final double redius;
  const ChatBotIconWidget({
    super.key,
    required this.redius,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.whiteColor,
      radius: redius,
      child: Image.asset(
        Assets.imagesIconBot,
        fit: BoxFit.fill,
      ),
    );
  }
}
