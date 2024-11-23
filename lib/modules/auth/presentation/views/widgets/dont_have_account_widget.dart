import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';
import 'package:iteru_app/modules/auth/presentation/views/signup_view.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: 'Dont have an account?',
              style: AppTextStyles.semiBold20(context)
                  .copyWith(color: AppColors.captionColor)),
          TextSpan(
              text: ' ',
              style: AppTextStyles.semiBold20(context)
                  .copyWith(color: AppColors.captionColor)),
          TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, SignupView.routeName);
                },
              text: 'Create an account',
              style: AppTextStyles.semiBold20(context)),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
