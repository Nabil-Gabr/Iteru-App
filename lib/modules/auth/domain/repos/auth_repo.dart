import 'package:dartz/dartz.dart';
import 'package:iteru_app/core/errors/failure.dart';
import 'package:iteru_app/modules/auth/domain/entity/forgot_password_entity.dart';
import 'package:iteru_app/modules/auth/domain/entity/user_entity.dart';

abstract class AuthRepo {
  //create User
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String userName,
      required String userEmail,
      required String userPassword,
      required String userPhone});

  //login method
  Future<Either<Failure, UserEntity>> loginUserWithEmailAndPassword(
      {required String userEmail, required String userPassowrd});

  //lforgotPassword method
  Future<Either<Failure, ForgotPasswordEntity>> forgotPassword({
    required String userEmail,
  });
}
