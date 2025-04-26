import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/helpers/functions/show_error_bar.dart';
import 'package:iteru_app/modules/chat/presentation/manager/cubit/send_message_cubit.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/chat_view_body.dart';

class ChatViewBodyBlocConsumer extends StatelessWidget {
  const ChatViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the scrollController from the SendMessageCubit
    final scrollController = context.read<SendMessageCubit>().scrollController;

    return BlocConsumer<SendMessageCubit, SendMessageState>(
      listener: (context, state) {
        if (state.errorMessage != null) {
          showErrorBar(context, state.errorMessage!);
        } else {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Success')));
        }
      },
      builder: (context, state) {
        return ChatViewBody(
          messages: state.messages,
          isLoading: state.isLoading,
          scrollController: scrollController,  // Pass the scrollController
        );
      },
    );
  }
}

