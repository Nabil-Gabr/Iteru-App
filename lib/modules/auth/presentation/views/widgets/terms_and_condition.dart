import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/custtom_check_box.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key, required this.onChanged});
  final ValueChanged<bool>onChanged;

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CusttomCheckBox(
          isChecked: isTermsAccepted,
          onChecked: (value) {
            setState(() {
              isTermsAccepted = value;
              widget.onChanged(value);
            });
          },
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'I agree to Platform',
                    style: AppTextStyles.semiBold16(context)),
                const TextSpan(
                    text: ' ',),
                TextSpan(
                  text: 'Terms of Serivce and Privacy Policy',
                  style: AppTextStyles.semiBold15(context).copyWith(color: AppColors.primaryColor))
              ],
            ),
            textAlign: TextAlign.left,
          ),
        )
      ],
    );
  }
}
