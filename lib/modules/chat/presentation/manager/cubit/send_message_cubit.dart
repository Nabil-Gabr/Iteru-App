import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/modules/chat/domain/entity/message_entity.dart';
import 'package:iteru_app/modules/chat/domain/repo/send_message_repo.dart';

part 'send_message_state.dart';

class SendMessageCubit extends Cubit<SendMessageState> {
  final SendMessageRepo sendMessageRepo;
  SendMessageCubit(this.sendMessageRepo) : super(SendMessageInitial());

  Future<void> sendMessage(
      {required String token, required String message}) async {
    //1-emit SignInLoading
    emit(SendMessageLoading());

    //result<Ether< L , R >>
    var result =
        await sendMessageRepo.sendMessage(token: token, message: message);

    //result fold
    result.fold(
      //2-emit SignInFailure
      (failuer) => emit(SendMessageFailure(errorMesage: failuer.errMessag)),
      //3-emit SignInSuccess
      (messageEntity) => emit(SendMessageSuccess(messageEntity: messageEntity)),
    );
  }
}
