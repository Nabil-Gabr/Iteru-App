import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.onTap,
    required this.text, required this.alignment, required this.textColor,
  });
  final void Function()? onTap;
  final String text;
  final AlignmentGeometry alignment;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
          alignment: alignment,
          child: Text(
            text,
            style: AppTextStyles.semiBold18n(context).copyWith(color: textColor),
          )),
    );
  }
}
