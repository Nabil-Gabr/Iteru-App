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
      // Call the API
      var user = await apiAuthService.post(
        url: "http://10.0.2.2:3000/api/auth/login",
        body: {
          "email": userEmail,
          "password": userPassowrd,
        },
      );

      // Log the response to debug
      log('API Response: $user');

      // // Validate and parse the response
      // if (user is! Map<String, dynamic>) {
      //   throw ArgumentError('Response is not a valid JSON object.');
      // }

      // Convert JSON to UserModel
      return right(UserModel.fromJson(user));
    } catch (e) {
      log('Error occurred: ${e.toString()}');
      if (e is DioException) {
        log('DioException data: ${e.response?.data}');
        return left(ServerFailuer.fromDioExeption(e));
      }
      return left(ServerFailuer(errMessag: e.toString()));
    }
  }

  //create User impl
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String userName,
      required String userEmail,
      required String userPassword,
      required String userPhone}) async {
    try {
      var response = await apiAuthService
          .post(url: "http://10.0.2.2:3000/api/auth/register", body: {
        "name": userName,
        "email": userEmail,
        "password": userPassword,
        "phone": userPhone
      });

      return right(UserModel.fromJson(response));
    } catch (e) {
      log("Exception in AuthRepoImpl  createUserWithEmailAndPassword==$e");
      if (e is DioException) {
        return left(ServerFailuer.fromDioExeption(e));
      } else {
        return left(ServerFailuer(errMessag: e.toString()));
      }
      // return left(ServerFailuer('e.toString()'));
    }
  }
}
