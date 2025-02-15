import 'package:flutter/material.dart';

class ChatBotIconWidget extends StatelessWidget {
  final double redius;
  const ChatBotIconWidget({
    super.key, required this.redius,
  });

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      backgroundColor: Colors.red,
      // backgroundImage: const AssetImage("assets/chatboticon.png"),
      radius: redius,
    );
  }
}
