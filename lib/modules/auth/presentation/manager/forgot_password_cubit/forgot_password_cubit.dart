import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/modules/auth/domain/entity/forgot_password_entity.dart';
import 'package:iteru_app/modules/auth/domain/repos/auth_repo.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit(this.authRepo) : super(ForgotPasswordInitial());
  final AuthRepo authRepo;

  Future<void> forgotPassword({required String email}) async {
    emit(ForgotPasswordLoading());
    var result = await authRepo.forgotPassword(userEmail: email);
    result.fold(
      (failure) => emit(ForgotPasswordFailutr(errorMessage: failure.errMessag)),
      (forgotPasswordEntity) => emit(
          ForgotPasswordSuccess(forgotPasswordEntity: forgotPasswordEntity)),
    );
  }
}
