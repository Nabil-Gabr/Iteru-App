import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/modules/auth/domain/entity/user_entity.dart';
import 'package:iteru_app/modules/auth/domain/repos/auth_repo.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;

  Future createUserWithEmailAndPassword({
    required String userName,
    required String userEmail,
    required String userPassword,
    required String userPhone,
  }) async {
    emit(SignupLoading());

    final result = await authRepo.createUserWithEmailAndPassword(
        userName: userName,
        userEmail: userEmail,
        userPassword: userPassword,
        userPhone: userPhone);

    result.fold((failure) => emit(SignupFailure(message: failure.errMessag)),
        (userEntity) => emit(SignupSuccess(userEntity: userEntity)));
  }
}
