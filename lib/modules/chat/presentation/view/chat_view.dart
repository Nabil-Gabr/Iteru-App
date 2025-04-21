import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/services/get_it_service.dart';
import 'package:iteru_app/modules/chat/domain/repo/send_message_repo.dart';
import 'package:iteru_app/modules/chat/presentation/manager/cubit/send_message_cubit.dart';
import 'package:iteru_app/modules/chat/presentation/view/widgets/chat_view_body_bloc_consumer.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});
  static const String routeName = 'ChatView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SendMessageCubit(getIt<SendMessageRepo>()),
      child: Scaffold(
        appBar: AppBar(),
        body: const SafeArea(child: ChatViewBodyBlocConsumer()),
      ),
    );
  }
}
