import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});
  //routeName
  static const String routeName='ForgotPasswordView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(backgroundColor: AppColors.whiteColor,),
      body: const SafeArea(child: ForgotPasswordViewBody()),
    );
  }
}