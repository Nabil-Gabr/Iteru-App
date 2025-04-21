import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/cache/shared_preferences_singleton.dart';
import 'package:iteru_app/modules/chat/presentation/manager/cubit/send_message_cubit.dart';
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

    List<MessageEntityTest> messagesList = [
      MessageEntityTest(message: 'Hello can i help you?', id: '11'),
      MessageEntityTest(message: 'I want to ask you about a place', id: 'id'),
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
            context.read<SendMessageCubit>().sendMessage(
                token: CacheHelpe.getData(key: 'token'), message: data);
            message = data;
            messagesList.add(
              MessageEntityTest(message: data, id: 'id'),
            );
            controller.clear();
            log(message);
          },
        ),
      ],
    );
  }
}

class MessageEntityTest {
  final String message;
  final String id;

  MessageEntityTest({required this.message, required this.id});
}
