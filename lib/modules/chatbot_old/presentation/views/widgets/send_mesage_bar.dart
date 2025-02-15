import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/chatbot_old/presentation/views/widgets/chat_bot_text_form_field.dart';
import 'package:iteru_app/modules/chatbot_old/presentation/views/widgets/custom_chat_bot_button.dart';

class SendMesageBar extends StatelessWidget {
  const SendMesageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              height: 66,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(
                    0xff7DC9DB,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                    child:  ChatBotTextFormField(),
                  ),
                  Row(
                    children: [
                      CustomChatBotButton(
                        onTap: () {},
                        image: Assets.imagesChatbot,
                      ),
                      const SizedBox(width: 14,),
                      CustomChatBotButton(
                        onTap: () {},
                        image: Assets.imagesChatbot,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 5,),
          CustomChatBotButton(
            onTap: () {},
            image: Assets.imagesChatbot,
          )
        ],
      ),
    );
  }
}
