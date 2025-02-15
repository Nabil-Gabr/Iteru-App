import 'package:flutter/material.dart';
import 'package:iteru_app/modules/chatbot_old/presentation/views/widgets/chat_bot_view_body.dart';
import 'package:iteru_app/modules/chatbot_old/presentation/views/widgets/send_mesage_bar.dart';

class ChatViewOld extends StatelessWidget {
  const ChatViewOld({super.key});
  static const String routeName='ChatViewOld';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: SendMesageBar(),
      body: SafeArea(child: ChatBotViewBody()),
    );
  }
}
