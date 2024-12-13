import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:iteru_app/core/errors/failure.dart';
import 'package:iteru_app/core/services/api/api_auth_service.dart';
import 'package:iteru_app/modules/auth/data/models/user_model.dart';
import 'package:iteru_app/modules/auth/domain/entity/user_entity.dart';
import 'package:iteru_app/modules/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final ApiAuthService apiAuthService;

  AuthRepoImpl({required this.apiAuthService});
  @override
  Future<Either<Failure, UserEntity>> loginUserWithEmailAndPassword(
      {required String userEmail, required String userPassowrd}) async {
    try {
      var user = await apiAuthService.signInWithEmailAndPassword(
          email: userEmail, password: userPassowrd);
      // var userEntity = UserEntity(userEmail: userEmail, userName: '', userPassowrd: userPassowrd, userPhone: '', userToken: user["token"]);
      log(user["token"]);

      return right(UserModel.fromJson(user));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioExeption(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String userName,
      required String userEmail,
      required String userPassword,
      required String userPhone}) {
    throw UnimplementedError();
  }
}
