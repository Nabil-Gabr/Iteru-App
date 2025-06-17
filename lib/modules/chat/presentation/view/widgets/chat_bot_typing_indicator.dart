import 'package:flutter/material.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/chat_bot_icon_widget.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/typing_dots.dart';

class ChatBotTypingIndicator extends StatelessWidget {
  const ChatBotTypingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ChatBotIconWidget(redius: 20),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          decoration: BoxDecoration(
            color: const Color(0xFFE8E8EE),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const TypingDots(),
        ),
      ],
    );
  }
}