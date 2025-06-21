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
    void sendTextMessage(BuildContext context) {
      final text = controller.text.trim();
      if (text.isEmpty) return;
      context.read<SendMessageCubit>().sendMessage(
            token: CacheHelpe.getData(key: 'token'),
            message: text,
          );
      controller.clear();
      FocusScope.of(context).unfocus(); // 👈 يغلق الكيبورد
    }

    void pickImage(BuildContext context) {
      showModalBottomSheet(
        context: context,
        builder: (_) {
          return SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.camera_alt),
                  title: const Text('Take a photo'),
                  onTap: () async {
                    Navigator.pop(context);
                    final pickedFile = await ImagePicker().pickImage(
                      source: ImageSource.camera,
                    );
                    if (pickedFile != null) {
                      final imageFile = File(pickedFile.path);
                      context.read<SendMessageCubit>().sendImage(imageFile);
                    }
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: const Text('Choose from gallery'),
                  onTap: () async {
                    Navigator.pop(context);
                    final pickedFile = await ImagePicker().pickImage(
                      source: ImageSource.gallery,
                    );
                    if (pickedFile != null) {
                      final imageFile = File(pickedFile.path);
                      context.read<SendMessageCubit>().sendImage(imageFile);
                    }
                  },
                ),
              ],
            ),
          );
        },
      );
    }

    return Column(
      children: [
        const ChatBotAppBar(),
        const SizedBox(height: 30),
        Expanded(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: messages.isEmpty
        ? const Center(
            child: Text(
              'What can I help with?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : ListView.builder(
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
                          padding: const EdgeInsets.all(4),
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
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: UserMessage(message: message.content),
                  );
                }
              } else {
                if (message is ImageEntity) {
                  return message.detectedClasses.isNotEmpty
                      ? ChatBotMessage(
                          message: message.detectedClasses.join(', '),
                        )
                      : const SizedBox();
                } else if (message.aiReply.isNotEmpty) {
                  return ChatBotMessage(message: message.aiReply);
                } else {
                  return const SizedBox();
                }
              }
            },
          ),
  ),
),

        CustomTextFieldChatBot(
          onTap: () => sendTextMessage(context),
          controller: controller,
          onSubmitted: (_) => sendTextMessage(context),
          prefixIcon: GestureDetector(
            onTap: () => pickImage(context), // 👈 يفتح خيارات الصور
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




