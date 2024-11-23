import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeTextFieldWidget extends StatelessWidget {
  const PinCodeTextFieldWidget({
    super.key,
    this.onChanged,
  });
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: PinCodeTextField(
        appContext: context,
        onChanged: onChanged,
        length: 4,
        cursorHeight: 19,
        enableActiveFill: true,
        textStyle: AppTextStyles.semiBold24(context),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          fieldWidth: 50,
          inactiveColor: AppColors.captionColor,
          selectedColor: AppColors.primaryColor,
          activeFillColor: AppColors.primaryColor,
          selectedFillColor: AppColors.whiteColor,
          inactiveFillColor: Colors.grey.shade100,
          activeColor: AppColors.primaryColor,
          borderWidth: 1,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}