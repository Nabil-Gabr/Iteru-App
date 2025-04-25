import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/cache/shared_preferences_singleton.dart';
import 'package:iteru_app/modules/chat/domain/entity/message_entity.dart';
import 'package:iteru_app/modules/chat/presentation/manager/cubit/send_message_cubit.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/chat_bot_app_bar.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/chat_bot_icon_widget.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/chat_bot_message.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/custom_text_field_chat_bot.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/user_message.dart';

class ChatViewBody extends StatelessWidget {
  final List<MessageEntity> messages;
  final bool isLoading;
  const ChatViewBody(
      {super.key, required this.messages, required this.isLoading});

  // final _controller = ScrollController();
  static TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
            itemCount:
                isLoading ? messages.length * 2 + 1 : messages.length * 2,
            itemBuilder: (context, index) {
              if (isLoading && index == messages.length * 2) {
                return const ChatBotTypingIndicator();
              }
              final realIndex = index ~/ 2;
              final isUserMessage = index.isEven;
              final message = messages[realIndex];

              if (isUserMessage) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                  child: UserMessage(message: message.content),
                );
              } else {
                return ChatBotMessage(message: message.aiReply);
              }
            },
          ),
        )),
        //3- TextField
        CustomTextFieldChatBot(
          controller: controller,
          onSubmitted: (data) {
            context.read<SendMessageCubit>().sendMessage(
                token: CacheHelpe.getData(key: 'token'), message: data);

            controller.clear();
          },
        ),
      ],
    );
  }
}

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

class TypingDots extends StatefulWidget {
  const TypingDots({super.key});

  @override
  State<TypingDots> createState() => _TypingDotsState();
}

class _TypingDotsState extends State<TypingDots>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200))
      ..repeat();

    _animation1 = Tween<double>(begin: 0.3, end: 1).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.6, curve: Curves.easeInOut),
    ));
    _animation2 = Tween<double>(begin: 0.3, end: 1).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.2, 0.8, curve: Curves.easeInOut),
    ));
    _animation3 = Tween<double>(begin: 0.3, end: 1).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.4, 1.0, curve: Curves.easeInOut),
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget dot(Animation<double> animation) {
    return FadeTransition(
      opacity: animation,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 2),
        child: CircleAvatar(radius: 4, backgroundColor: Colors.grey),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        dot(_animation1),
        dot(_animation2),
        dot(_animation3),
      ],
    );
  }
}
