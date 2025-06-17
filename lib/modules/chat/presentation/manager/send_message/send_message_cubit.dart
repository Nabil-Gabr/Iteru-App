import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/modules/chat/domain/entity/image_entity.dart';
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

  /// إرسال رسالة نصية
  Future<void> sendMessage({
    required String token,
    required String message,
  }) async {
    // 1. أنشئ رسالة المستخدم المؤقتة
    final userMessage = MessageEntity(
      id: UniqueKey().toString(),
      userId: 'user',
      content: message,
      aiReply: '',
      createdAt: DateTime.now(),
    );

    // 2. أضفها للحالة مؤقتًا
    final updatedMessages = List<MessageEntity>.from(state.messages)
      ..add(userMessage);

    emit(state.copyWith(messages: updatedMessages, isLoading: true));

    // 3. استدعي API الخاص بالرد
    final result = await sendMessageRepo.sendMessage(
      token: token,
      message: message,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          errorMessage: failure.errMessag,
        ));
      },
      (backendMessages) {
        // 4. دمج أي صور موجودة مسبقًا
        final existingImages = state.messages.where((e) => e is ImageEntity);

        final allMessages = [
          ...existingImages,
          ...backendMessages.where((e) => e is! ImageEntity),
        ];

        // 5. ترتيب الرسائل حسب createdAt
        allMessages.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));

        emit(state.copyWith(
          isLoading: false,
          messages: allMessages,
          errorMessage: null,
        ));
      },
    );
  }

  /// إرسال صورة واستلام الرد النصي من الـ AI
  Future<void> sendImage(File imageFile) async {
    // 1. أضف صورة مؤقتة للـ UI
    final tempImage = ImageEntity(
      id: UniqueKey().toString(),
      userId: 'user',
      imagePath: imageFile.path,
      detectedClasses: [],
      createdAt: DateTime.now(),
    );

    final tempList = List<MessageEntity>.from(state.messages)..add(tempImage);
    emit(state.copyWith(messages: tempList, isLoading: true));

    // 2. استدعي API الخاص بإرسال الصورة
    final result = await sendMessageRepo.sendImage(imageFile);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          errorMessage: failure.errMessag,
        ));
      },
      (imageWithReply) {
        // 3. احذف الصورة المؤقتة وأضف الجديدة مع الرد
        final updated = List<MessageEntity>.from(state.messages)
          ..remove(tempImage)
          ..add(imageWithReply);

        // 4. ترتيب الرسائل حسب createdAt
        updated.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));


        emit(state.copyWith(
          isLoading: false,
          messages: updated,
          errorMessage: null,
        ));
      },
    );
  }
}

