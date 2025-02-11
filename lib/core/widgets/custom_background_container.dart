import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    // 🔹 تحديد اللون بناءً على الثيم الحالي
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color backgroundContainerColor =
        isDarkMode ? AppColors.darkModeSecounder : AppColors.whiteColor;
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundContainerColor,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // لون الظل
            spreadRadius: .2, // مدى انتشار الظل
            blurRadius: 5, // مقدار التمويه
          ),
        ],
      ),
      child: child,
    );
  }
}
