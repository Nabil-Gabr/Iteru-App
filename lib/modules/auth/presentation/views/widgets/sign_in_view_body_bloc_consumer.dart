import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/helpers/functions/show_error_bar.dart';

import 'package:iteru_app/modules/auth/presentation/views/widgets/login_view_body.dart';
import 'package:iteru_app/modules/home/presentation/view/main_view.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../manager/sign_in_cubits/sign_in_cubit.dart';

class SignInViewBodyBlocConsumer extends StatelessWidget {
  const SignInViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          log("Sign In View Body BlocConsumer==${state.toString()}");
          ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Success')));
        Navigator.of(context).pushNamed(MainView.routeName);
        }
        if (state is SignInFailutr) {
          showErrorBar(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SignInLoading ? true : false,
            child: const LoginViewBody());
      },
    );
  }
}
