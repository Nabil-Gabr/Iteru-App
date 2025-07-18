import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/cache/shared_preferences_singleton.dart';
import 'package:iteru_app/core/helpers/functions/show_error_bar.dart';
import 'package:iteru_app/modules/auth/presentation/manager/signup_cubits/signup_cubit.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/signup_view_body.dart';
import 'package:iteru_app/modules/home/presentation/view/home_view.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          log("Sign Up View Body BlocConsumer==${state.userEntity}");
          showErrorBar(context, 'Success');
          final decodedToken= JwtDecoder.decode(state.userEntity.token);
          CacheHelpe.saveData(key: 'token', value: state.userEntity.token);
          CacheHelpe.saveData(key: 'id', value: decodedToken["id"]);
          
          Navigator.of(context).pushNamed(HomeView.routeName);
        }
        if (state is SignupFailure) {
          showErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SignupLoading ? true : false,
            child: const SignupViewBody());
      },
    );
  }
}
