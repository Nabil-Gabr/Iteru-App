import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/modules/auth/domain/repos/auth_repo.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo;

  Future<void> signIn({
    required String userEmail,
    required String userPassowrd,
  }) async {
    //1-emit SignInLoading
    emit(SignInLoading());

    //result<Ether< L , R >>
    var result = await authRepo.loginUserWithEmailAndPassword(
      userEmail: userEmail,
      userPassowrd: userPassowrd,
    );

    //result fold
    result.fold(
      //2-emit SignInFailure
      (failuer) => emit(SignInFailutr(errorMessage: failuer.errMessag)),
      //3-emit SignInSuccess
      (userEntity) => emit(SignInSuccess()),
    );
    // try {
    //   emit(SignInLoading());
    //   final response = await Dio().post("http://10.0.2.2:3000/api/auth/login",
    //       data: {
    //         "email": signInEmail.text,
    //         "password": signInPassword.text,
    //       });
    //   emit(SignInSuccess());
    //   print(response);
    // } catch (e) {
    //   emit(SignInFailutr(errorMessage: e.toString()));
    //   print(e.toString());
    // }
  }
}
