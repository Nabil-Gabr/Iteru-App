import 'package:flutter/material.dart';
import 'package:iteru_app/modules/chatbot_old/presentation/views/widgets/chat_bot_app_bar.dart';
import 'package:iteru_app/modules/chatbot_old/presentation/views/widgets/chat_bot_message.dart';
import 'package:iteru_app/modules/chatbot_old/presentation/views/widgets/user_message.dart';

class ChatBotViewBody extends StatelessWidget {
  const ChatBotViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: ChatBotAppBar()),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverList.builder(
              itemCount: 2,
              itemBuilder: (context, i) {
                if (i % 2 == 0) {
                  return const ChatBotMessage(message: "How I Can help you?");
                } else {
                  return const Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: UserMessage(
                        userMessage: "I need to help me please!",
                      ),
                    ),
                  );
                }
              })
        ],
      ),
    );
  }
}
