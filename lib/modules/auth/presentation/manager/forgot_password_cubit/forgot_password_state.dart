part of 'forgot_password_cubit.dart';

@immutable
sealed class ForgotPasswordState {}

final class ForgotPasswordInitial extends ForgotPasswordState {}

final class ForgotPasswordSuccess extends ForgotPasswordState {
  final ForgotPasswordEntity forgotPasswordEntity;

  ForgotPasswordSuccess({required this.forgotPasswordEntity});
}

final class ForgotPasswordLoading extends ForgotPasswordState {}

final class ForgotPasswordFailutr extends ForgotPasswordState {
  final String errorMessage;

  ForgotPasswordFailutr({required this.errorMessage});
}
