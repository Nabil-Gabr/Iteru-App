import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/helpers/functions/show_error_bar.dart';
import 'package:iteru_app/modules/chat/presentation/manager/cubit/send_message_cubit.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/chat_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class ChatViewBodyBlocConsumer extends StatelessWidget {
  const ChatViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SendMessageCubit, SendMessageState>(
      listener: (context, state) {
        if (state is SendMessageSuccess) {
          final messages = (state).messageEntity;

          for (var message in messages) {
            debugPrint('---------------------------------------------');
            debugPrint('===========Chat View Body Bloc Consumer========');
            debugPrint('User: ${message.userId}');
            debugPrint('Content: ${message.content}');
            debugPrint('AI Reply: ${message.aiReply}');
            debugPrint('Created At: ${message.createdAt}');
            debugPrint('---------------------------------------------');
          }
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Success')));
        }
        if (state is SendMessageFailure) {
          showErrorBar(context, state.errorMesage);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SendMessageLoading ? true : false,
            child: const ChatViewBody());
      },
    );
  }
}
