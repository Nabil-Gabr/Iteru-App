import 'package:flutter/material.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/chat_view_body_bloc_consumer.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});
  static const String routeName = 'ChatView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ChatViewBodyBlocConsumer()),
    );
  }
}
