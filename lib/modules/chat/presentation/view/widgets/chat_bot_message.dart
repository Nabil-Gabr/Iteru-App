import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/chat_bot_icon_widget.dart';

class ChatBotMessage extends StatelessWidget {
  final String message;
  const ChatBotMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const ChatBotIconWidget(redius: 20),
        Column(
          children: [
            BubbleSpecialThree(
              text: message,
              color: const Color(0xFFE8E8EE),
              tail: true,
              isSender: false,
            )
          ],
        )
      ],
    );
  }
}
