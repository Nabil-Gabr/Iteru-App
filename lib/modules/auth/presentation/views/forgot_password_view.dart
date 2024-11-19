import 'package:flutter/material.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});
  
  static const String routeName='ForgotPasswordView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,),
      body: const SafeArea(child: ForgotPasswordViewBody()),
    );
  }
}