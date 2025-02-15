import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});
  
  // final _controller = ScrollController();
  static TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return const ChatBuble();
              },
            )
        ),
        // Expanded(
        //   child: ListView.builder(
        //       reverse: true,
        //       controller: _controller,
        //       itemCount: messagesList.length,
        //       itemBuilder: (context, index) {
        //         return messagesList[index].id == email
        //             ? ChatBuble(
        //                 message: messagesList[index],
        //               )
        //             : ChatBubleForFriend(message: messagesList[index]);
        //       }),
        // ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            controller: controller,
            onSubmitted: (data) {
              // messages.add(
              //   {kMessage: data, kCreatedAt: DateTime.now(), 'id' : email },

              // );
              controller.clear();
              // _controller.animateTo(0,
              //     duration: Duration(milliseconds: 500),
              //     curve: Curves.easeIn);
            },
            decoration: InputDecoration(
              hintText: 'Send Message',
              suffixIcon: const Icon(
                Icons.send,
                color: AppColors.primaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}



class ChatBuble extends StatelessWidget {
  const ChatBuble({
    super.key,
    // required this.message,
  });

  // final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 32, bottom: 32, right: 32),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
          color: AppColors.primaryColor,
        ),
        child: const Text(
          'message.message',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
