import 'package:flutter/material.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/chat_view_body.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});
  static const String routeName = 'ChatView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ChatViewBody()),
    );
  }
}
