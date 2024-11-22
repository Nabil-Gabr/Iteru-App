import 'package:flutter/material.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  
  //routeName
  static const String routeName = 'SignupView';
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SignupViewBody()),
    );
  }
}
