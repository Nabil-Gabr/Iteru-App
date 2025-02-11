import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';

class CusttomTextFormField extends StatelessWidget {
  const CusttomTextFormField(
      {super.key,
      this.obscureText = false,
      this.textInputType,
      required this.hintText,
      this.onSaved,
      this.suffixIcon,
      
      });
  final TextInputType? textInputType;
  final String hintText;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    // 🔹 تحديد اللون بناءً على الثيم الحالي
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color textFieldColor =
        isDarkMode ?  AppColors.darkModeSecounder :const Color(0xFFF9FAFA) ;
    return TextFormField(
      obscureText: obscureText,
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required.';
        }
        return null;
      },
      //1-keyboardType
      keyboardType: textInputType,

      //2-decoration
      decoration: InputDecoration(
        //2:1-background text feild
        filled: true,
        fillColor: textFieldColor,

        //2:2-border
        border: buildBorder(),

        //2:3-enabledBorder
        enabledBorder: buildBorder(),

        //2:4-focusedBorder
        focusedBorder: buildBorder(),

        //2:5-hintText
        hintText: hintText,
        hintStyle: AppTextStyles.medium20(context).copyWith(color: AppColors.captionColor),

        //2:6-suffixIcon
        suffixIcon: suffixIcon,
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: Color(0xFFE6E9EA), width: 1),
    );
  }
}
