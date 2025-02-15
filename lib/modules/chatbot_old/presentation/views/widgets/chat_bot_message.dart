import 'package:flutter/material.dart';
import 'package:iteru_app/modules/chatbot_old/presentation/views/widgets/chat_bot_icon_widget.dart';

class ChatBotMessage extends StatelessWidget {
  final String message; 
  const ChatBotMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ChatBotIconWidget(redius: 20),
        const SizedBox(width: 5,),
        Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16))),
              child:  Text(
                message,
                style: const TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ],
        )
      ],
    );
  }
}
