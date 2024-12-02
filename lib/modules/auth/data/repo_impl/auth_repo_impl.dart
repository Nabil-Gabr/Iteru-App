import 'package:dartz/dartz.dart';
import 'package:iteru_app/core/errors/failure.dart';
import 'package:iteru_app/modules/auth/domain/entity/user_entity.dart';
import 'package:iteru_app/modules/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required userEmail,
      required userPassword,
      required userName,
      required userPhone}) {
    throw UnimplementedError();
  }
}
