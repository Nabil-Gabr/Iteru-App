import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: 'Already have an account?',
              style: AppTextStyles.semiBold20(context)
                  .copyWith(color: AppColors.captionColor)),
          TextSpan(
              text: ' ',
              style: AppTextStyles.semiBold20(context)
                  .copyWith(color: AppColors.captionColor)),
          TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pop(context);
                },
              text: 'Login',
              style: AppTextStyles.semiBold20(context)),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
