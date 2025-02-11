import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';
import 'package:iteru_app/modules/home/presentation/view/home_view.dart';

class CusttomButtonSocial extends StatelessWidget {
  const CusttomButtonSocial(
      {super.key, required this.title, required this.image});
  final String title, image;

  @override
  Widget build(BuildContext context) {
    // 🔹 تحديد اللون بناءً على الثيم الحالي
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color buttonColor =
        isDarkMode ? const Color(0xff3D5CFF) : AppColors.whiteColor;
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: Color(0xFFDDDFDF)))),
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(HomeView.routeName);
        },
        child: ListTile(
          visualDensity:
              const VisualDensity(vertical: VisualDensity.minimumDensity),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          titleTextStyle: AppTextStyles.bold22(context),
          trailing: SvgPicture.asset(image),
        ),
      ),
    );
  }
}
