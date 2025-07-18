import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:iteru_app/core/errors/failure.dart';
import 'package:iteru_app/modules/chat/domain/entity/image_entity.dart';
import 'package:iteru_app/modules/chat/domain/entity/message_entity.dart';

abstract class SendMessageRepo {
  // fuction sen message
  Future<Either<Failure, List<MessageEntity>>> sendMessage(
      {required String token, required String message});

  Future<Either<Failure, ImageEntity>> sendImage(File imageFile);

  Future<Either<Failure, Unit>> deleteAllMessages(String token);
}
