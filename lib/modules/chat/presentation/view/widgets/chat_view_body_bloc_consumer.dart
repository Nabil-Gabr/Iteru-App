import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/helpers/functions/show_error_bar.dart';
import 'package:iteru_app/modules/chat/presentation/manager/send_message/send_message_cubit.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/chat_view_body.dart';

class ChatViewBodyBlocConsumer extends StatelessWidget {
  const ChatViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = context.read<SendMessageCubit>().scrollController;

    return BlocConsumer<SendMessageCubit, SendMessageState>(
      listener: (context, state) async {
        if (state.errorMessage != null) {
          showErrorBar(context, state.errorMessage!);
        }

        if (state.isLoading ||
            (state.messages.isNotEmpty && !state.isLoading)) {
          // scroll
        }

        // ✅ هنا بقى هندير ال Scroll بناء على الحالة
        await Future.delayed(
            const Duration(milliseconds: 100)); // نسمح للـ UI إنه يتبني
        scrollController.animateTo(
          scrollController.position.maxScrollExtent + 100,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      },
      builder: (context, state) {
        return ChatViewBody(
          messages: state.messages,
          isLoading: state.isLoading,
          scrollController: scrollController,
        );
      },
    );
  }
}
