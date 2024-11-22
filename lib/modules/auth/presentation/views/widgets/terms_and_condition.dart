import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/custtom_check_box.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

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
            });
          },
        ),
        const SizedBox(
          width: 8,
        ),
        const Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'I agree to Platform',
                    style: TextStyle(
                        color: AppColors.captionColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 13)),
                TextSpan(
                    text: ' ',
                    style: TextStyle(
                        color: AppColors.captionColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 13)),
                TextSpan(
                  text: 'Terms of Serivce and Privacy Policy',
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 13),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        )
      ],
    );
  }
}
