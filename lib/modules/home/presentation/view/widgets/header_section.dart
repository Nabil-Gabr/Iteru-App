import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
    required this.title,
    required this.textButton, this.onTap,
  });
  final String title;
  final String textButton;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyles.semiBold22(context)
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 26,
            width: 72,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                border: Border.all(color: const Color(0xffFCCB00))),
            child: Text(
              textButton,
              style: AppTextStyles.regular18(context).copyWith(color: const Color(0xffFCCB00)),
            ),
          ),
        )
      ],
    );
  }
}
