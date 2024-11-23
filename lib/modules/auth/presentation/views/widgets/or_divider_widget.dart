import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Expanded(child: Divider()),
        const SizedBox(
          width: 18,
        ),
        Text(
          'OR',
          style: AppTextStyles.semiBold20(context),
        ),
        const SizedBox(
          width: 18,
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}
