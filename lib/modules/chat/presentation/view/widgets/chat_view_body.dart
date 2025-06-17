import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/cache/shared_preferences_singleton.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/modules/chat/domain/entity/image_entity.dart';
import 'package:iteru_app/modules/chat/domain/entity/message_entity.dart';
import 'package:iteru_app/modules/chat/presentation/manager/send_message/send_message_cubit.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/chat_bot_app_bar.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/chat_bot_message.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/chat_bot_typing_indicator.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/custom_text_field_chat_bot.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/user_message.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ChatViewBody extends StatelessWidget {
  final List<MessageEntity> messages;
  final bool isLoading;
  final ScrollController scrollController;
  static TextEditingController controller = TextEditingController();

  const ChatViewBody({
    super.key,
    required this.messages,
    required this.isLoading,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //1 App Bar
        const ChatBotAppBar(),
        const SizedBox(height: 30),
        // 2 ListView messages
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListView.builder(
              controller: scrollController,
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
                  // لو الرسالة من النوع ImageEntity، نعرض الصورة
                  if (message is ImageEntity) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: AppColors.blackColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            padding: const EdgeInsets.all(
                                4), // 👈 المسافة بين الصورة والإطار
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                              child: Image.file(
                                File(message.imagePath),
                                width: 250,
                                height: 350,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    // رسالة نصية عادية من المستخدم
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: UserMessage(message: message.content),
                    );
                  }
                } else {
                  // رسالة من الـ AI (رد)
                  if (message is ImageEntity) {
                    // لو فيه detectedClasses من الـ AI بعد إرسال صورة
                    return message.detectedClasses.isNotEmpty
                        ? ChatBotMessage(
                            message: message.detectedClasses.join(', '),
                          )
                        : const SizedBox();
                  } else if (message.aiReply.isNotEmpty) {
                    return ChatBotMessage(message: message.aiReply);
                  } else {
                    return const SizedBox(); // لسه مفيش رد
                  }
                }
              },
            ),
          ),
        ),

        //3 TextField
        CustomTextFieldChatBot(
          controller: controller,
          onSubmitted: (data) {
            context.read<SendMessageCubit>().sendMessage(
                  token: CacheHelpe.getData(key: 'token'),
                  message: data,
                );
            controller.clear();
          },
          prefixIcon: GestureDetector(
            onTap: () async {
              final picker = ImagePicker();
              final pickedFile = await picker.pickImage(
                source: ImageSource.gallery, // أو camera لو حبيت
              );

              if (pickedFile != null) {
                final imageFile = File(pickedFile.path);
                context.read<SendMessageCubit>().sendImage(imageFile);
              }
            },
            child: const Icon(
              Icons.camera_alt,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
