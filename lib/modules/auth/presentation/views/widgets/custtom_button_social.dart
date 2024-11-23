import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';

class CusttomButtonSocial extends StatelessWidget {
  const CusttomButtonSocial(
      {super.key, required this.title, required this.image});
  final String title, image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: AppColors.whiteColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: Color(0xFFDDDFDF)))),
        onPressed: () {},
        child: ListTile(
          visualDensity:
              const VisualDensity(vertical: VisualDensity.minimumDensity),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          titleTextStyle: AppTextStyles.semiBold20(context),
          trailing: SvgPicture.asset(image),
        ),
      ),
    );
  }
}
