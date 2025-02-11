import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/services/get_it_service.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/modules/auth/domain/repos/auth_repo.dart';
import 'package:iteru_app/modules/auth/presentation/manager/forgot_password_cubit/forgot_password_cubit.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/forgot_password_view_body_bloc_consumer.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});
  //routeName
  static const String routeName = 'ForgotPasswordView';

  @override
  Widget build(BuildContext context) {
    // 🔹 تحديد اللون بناءً على الثيم الحالي
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color appBarColor =
        isDarkMode ? AppColors.darkModePrimary : AppColors.whiteColor;
    return BlocProvider(
      create: (context) => ForgotPasswordCubit(getIt<AuthRepo>()),
      child: Scaffold(
        //AppBar
        appBar: AppBar(
          backgroundColor: appBarColor,
        ),
        body: const ForgotPasswordViewBodyBlocConsumer(),
      ),
    );
  }
}