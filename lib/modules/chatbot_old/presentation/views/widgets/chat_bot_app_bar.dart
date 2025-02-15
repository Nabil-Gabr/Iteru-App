import 'package:flutter/material.dart';
import 'package:iteru_app/modules/chatbot_old/presentation/views/widgets/arrow_back_button.dart';
import 'package:iteru_app/modules/chatbot_old/presentation/views/widgets/chat_bot_icon_widget.dart';

class ChatBotAppBar extends StatelessWidget {
  const ChatBotAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ArrowBackButton(onPressed: () { 
          Navigator.of(context).pop();
         },),
        const Column(
          children: [
            Text(
              "Chat Bot ",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              
              children: [
                CircleAvatar(
                  radius: 3,
                  backgroundColor: Colors.green,
                ),
                SizedBox(width: 3,),
                Text(
                  "Online",
                  style: TextStyle(fontSize: 11, color: Color(0xffA19E98)),
                ),
              ],
            ),
          ],
        ),
        const ChatBotIconWidget(
          redius: 25,
        )
      ],
    );
  }
}
