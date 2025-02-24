import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:iteru_app/modules/chat/data/models/message_model.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/chat_bot_app_bar.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/custom_text_field_chat_bot.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/user_message.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/chat_bot_message.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  // final _controller = ScrollController();
  static TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    late String message;
    //messagesList
    List<MessageModel> messagesList = [
      MessageModel(message: 'message 1', id: 'id'),
      MessageModel(message: 'message 2', id: 'id'),
      MessageModel(message: 'message 3', id: '11'),
      MessageModel(message: 'message 4', id: 'id'),
      MessageModel(message: 'message 5', id: 'id'),
      MessageModel(message: 'message 6', id: '23'),
      MessageModel(message: 'message 7', id: 'id'),
      MessageModel(message: 'message 8', id: 'id'),
    ];
    //ChatViewBody
    return Column(
      children: [
        //1 App Bar
        const ChatBotAppBar(),
        //SizedBox
        const SizedBox(
          height: 30,
        ),
        //2-ListView messages
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView.builder(
            itemCount: messagesList.length,
            itemBuilder: (context, index) {
              return messagesList[index].id == 'id'
                  ? UserMessage(message: messagesList[index].message)
                  : ChatBotMessage(message: messagesList[index].message);
            },
          ),
        )),
        //3- TextField
        CustomTextFieldChatBot(
          controller: controller,
          onSubmitted: (data) {
            message = data;
            messagesList.add(
              MessageModel(message: data, id: 'id'),
            );
            controller.clear();
            log(message);
          },
        ),
      ],
    );
  }
}
