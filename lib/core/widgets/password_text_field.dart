import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/widgets/custtom_text_form_field.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    this.onSaved,
  });
  final void Function(String?)? onSaved;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CusttomTextFormField(
      obscureText: obscureText,
      onSaved: widget.onSaved,
      textInputType: TextInputType.emailAddress,
      hintText: 'Password',
      suffixIcon: GestureDetector(
          onTap: () {
            obscureText = !obscureText;
            setState(() {});
          },
          child: obscureText
              ? const Icon(Icons.visibility,color: AppColors.captionColor,)
              : const Icon(Icons.visibility_off,color: AppColors.captionColor,)),
    );
  }
}
