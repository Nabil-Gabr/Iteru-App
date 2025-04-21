import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:iteru_app/core/errors/failure.dart';
import 'package:iteru_app/core/services/api/api_database_service.dart';
import 'package:iteru_app/modules/chat/data/models/message_model.dart';
import 'package:iteru_app/modules/chat/domain/entity/message_entity.dart';
import 'package:iteru_app/modules/chat/domain/repo/send_message_repo.dart';

class SendMessageRepoImpl extends SendMessageRepo {
  final ApiDatabaseService apiDatabaseService;

  SendMessageRepoImpl({required this.apiDatabaseService});
  @override
  Future<Either<Failure, List<MessageEntity>>> sendMessage({
    required String token,
    required String message,
  }) async {
    try {
      Map<String, dynamic> response = await apiDatabaseService.post(
        url: 'https://iteru-clone-e8l9.vercel.app/api/messages',
        body: {'content': message},
        token: token,
      );

      List<MessageEntity> messagesList = [];
      
      for (var item in response['allMessages']) {
        messagesList.add(MessageModel.fromJson(item));
      }

      return Right(messagesList);
    } catch (e) {
      log('Error occurred: ${e.toString()}');
      if (e is DioException) {
        log('DioException data: ${e.response?.data}');
        return left(ServerFailuer.fromDioExeption(e));
      }
      return left(ServerFailuer(errMessag: e.toString()));
    }
  }
}
