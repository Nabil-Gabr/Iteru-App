import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/arrow_back_button.dart';

class ChatBotAppBar extends StatelessWidget {
  const ChatBotAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          ArrowBackButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Chat Bot ",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.green,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Online",
                      style: TextStyle(fontSize: 11, color: Color(0xffA19E98)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
