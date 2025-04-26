import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/modules/chat/domain/entity/message_entity.dart';
import 'package:iteru_app/modules/chat/domain/repo/send_message_repo.dart';

part 'send_message_state.dart';

class SendMessageCubit extends Cubit<SendMessageState> {
  final SendMessageRepo sendMessageRepo;
  final ScrollController scrollController;

  SendMessageCubit({
    required this.sendMessageRepo,
    required this.scrollController,
  }) : super(SendMessageState.initial());

  Future<void> sendMessage({
  required String token,
  required String message,
}) async {
  // 1- أول ما المستخدم يبعث رسالة، نظهر اللودينج ونروح للـ Typing Indicator
  emit(state.copyWith(isLoading: true));

  await Future.delayed(Duration(milliseconds: 100)); // ننتظر Frame واحد بسيط عشان الـ ListView يتبني
  scrollController.animateTo(
    scrollController.position.maxScrollExtent + 100, 
    duration: Duration(milliseconds: 300), 
    curve: Curves.easeOut,
  );

  // 2- بعدين نبعت الـ Request
  final result = await sendMessageRepo.sendMessage(token: token, message: message);

  result.fold(
    (failure) => emit(state.copyWith(
      isLoading: false,
      errorMessage: failure.errMessag,
    )),
    (newMessages) {
      emit(state.copyWith(
        isLoading: false,
        messages: newMessages,
        errorMessage: null,
      ));

      // 3- وبعد وصول الرد ننزل برضه
      Future.delayed(Duration(milliseconds: 100), () {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent + 100,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeOut,
        );
      });
    },
  );
}

}


