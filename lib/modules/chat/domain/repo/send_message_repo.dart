import 'package:dartz/dartz.dart';
import 'package:iteru_app/core/errors/failure.dart';
import 'package:iteru_app/modules/chat/domain/entity/message_entity.dart';

abstract class SendMessageRepo {
  // fuction sen message
  Future<Either<Failure, List<MessageEntity>>> sendMessage(
      {required String token, required String message});
}
