import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/services/get_it_service.dart';
import 'package:iteru_app/modules/auth/domain/repos/auth_repo.dart';
import 'package:iteru_app/modules/auth/presentation/manager/sign_in_cubits/sign_in_cubit.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/sign_in_view_body_bloc_consumer.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  //routeName
  static const String routeName = 'LoginView';
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt<AuthRepo>()),
      child: const Scaffold(
      body: SignInViewBodyBlocConsumer(),
    ),
    );
  }
}
