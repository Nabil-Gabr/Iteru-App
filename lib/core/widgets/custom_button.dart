import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';

class CusttomButton extends StatelessWidget {
  const CusttomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      required this.text,
      required this.onPressed});
  final Color backgroundColor, textColor;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56, //height: 37, base
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: AppTextStyles.bold22(context).copyWith(color: textColor),
          )),
    );
  }
}
