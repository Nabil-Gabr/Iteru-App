import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/helpers/functions/show_error_bar.dart';
import 'package:iteru_app/modules/auth/presentation/manager/forgot_password_cubit/forgot_password_cubit.dart';
import 'package:iteru_app/modules/auth/presentation/views/code_validation_view.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/forgot_password_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class ForgotPasswordViewBodyBlocConsumer extends StatelessWidget {
  const ForgotPasswordViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
      listener: (context, state) {
        if (state is ForgotPasswordSuccess) {
          log("Forgot Password View Body BlocConsumer==${state.toString()}");
          showErrorBar(context, state.forgotPasswordEntity.message);
          Navigator.of(context).pushNamed(CodeValidationView.routeName);
        }
        if (state is ForgotPasswordFailutr) {
          print(state.errorMessage);
          showErrorBar(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is ForgotPasswordLoading ? true : false,
          child: const SafeArea(child: ForgotPasswordViewBody()),
        );
      },
    );
  }
}
