import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iteru_app/modules/auth/presentation/views/signup_view.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          const TextSpan(
              text: 'Dont have an account?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF949D9E),
              )),
          const TextSpan(
              text: ' ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF949D9E),
              )),
          TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, SignupView.routeName);
                },
              text: 'Create an account',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
