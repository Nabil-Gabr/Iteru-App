part of 'sign_in_cubit.dart';

@immutable
sealed class SignInState {}

final class SignInInitial extends SignInState {}

final class SignInSuccess extends SignInState {
  final UserEntity userEntity;

  SignInSuccess({required this.userEntity});
}

final class SignInLoading extends SignInState {}

final class SignInFailutr extends SignInState {
  final String errorMessage;

  SignInFailutr({required this.errorMessage});
}
