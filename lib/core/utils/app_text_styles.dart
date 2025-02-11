import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/size_config.dart';

abstract class AppTextStyles {
  //Home Pages
  
  //عدد التكرار =1
  static TextStyle bold14(BuildContext context) {
    return TextStyle(
      //عدد تكرار اللون = 1
      color: AppColors.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  //عدد التكرار =1
  static TextStyle bold16n(BuildContext context) {
    return TextStyle(
      //عدد تكرار اللون = 1
      color: Colors.black45,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  //عدد التكرار =4
  static TextStyle regular18(BuildContext context) {
    // 🔹 تحديد اللون بناءً على الثيم الحالي
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color textColor =
        isDarkMode ? AppColors.whiteColor : AppColors.lightBlackColor;
    return TextStyle(
      //عدد تكرار اللون = 2
      color: textColor,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  //عدد التكرار =1
  static TextStyle bold18(BuildContext context) {
    return TextStyle(
      //عدد تكرار اللون = 1
      color: AppColors.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
      shadows: const [
        Shadow(
          color: Colors.black45,
          blurRadius: 4,
          offset: Offset(1, 2),
        ),
      ],
    );
  }

  //عدد التكرار =4
  static TextStyle medium20(BuildContext context) {
    // 🔹 تحديد اللون بناءً على الثيم الحالي
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color textColor =
        isDarkMode ? AppColors.whiteColor : AppColors.lightBlackColor;
    return TextStyle(
      //عدد تكرار اللون = 4
      color: textColor,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  //عدد التكرار =3
  static TextStyle regular20(BuildContext context) {
    return TextStyle(
      //عدد تكرار اللون = 3
      color: const Color(0xff333333),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  //عدد التكرار =1
  static TextStyle regular22(BuildContext context) {
    return TextStyle(
      color: const Color(0xff777777),
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  //عدد التكرار =1
  static TextStyle semiBold22(BuildContext context) {
    // 🔹 تحديد اللون بناءً على الثيم الحالي
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color textColor =
        isDarkMode ? AppColors.whiteColor : AppColors.lightBlackColor;
    return TextStyle(
      color: textColor,
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  //عدد التكرار =1
  static TextStyle regular24(BuildContext context) {
    return TextStyle(
      //عدد تكرار اللون = 1
      color: AppColors.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  //عدد التكرار =2
  static TextStyle medium24(BuildContext context) {
    return TextStyle(
      //عدد تكرار اللون = 2
      color: AppColors.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }
////////////////////////////////////////////////////////////////

//Auth And Onboarding Pages
//fontSize = 15---------------Done
  static TextStyle semiBold18n(BuildContext context) {
    // 🔹 تحديد اللون بناءً على الثيم الحالي
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color textColor =
        isDarkMode ? AppColors.captionColor : AppColors.blackColor;
    return TextStyle(
      color: textColor,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

//fontSize = 16----Done

  static TextStyle semiBold16(BuildContext context) {
    return TextStyle(
      color: AppColors.captionColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  //fontSize = 20 --------Done
  static TextStyle medium20n(BuildContext context) {
    // 🔹 تحديد اللون بناءً على الثيم الحالي
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color textColor =
        isDarkMode ? AppColors.whiteColor : AppColors.blackColor;
    return TextStyle(
      color: textColor,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  //text style button onbording-------Done
  static TextStyle bold22(BuildContext context) {
    return TextStyle(
      color: AppColors.blackColor,
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  ////ntSize = 20 --------Done
  static TextStyle semiBold20(BuildContext context) {
    // 🔹 تحديد اللون بناءً على الثيم الحالي
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color textColor =
        isDarkMode ? AppColors.whiteColor : AppColors.lightBlackColor;
    return TextStyle(
      color: textColor,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

//fontSize = 28 --------Done
  static TextStyle semiBold28(BuildContext context) {
    // 🔹 تحديد اللون بناءً على الثيم الحالي
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color textColor =
        isDarkMode ? AppColors.whiteColor : AppColors.blackColor;
    return TextStyle(
      color: textColor,
      fontSize: getResponsiveFontSize(context, fontSize: 28),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

//fontSize = 30 ----------------Done
  static TextStyle bold30(context) {
    // 🔹 تحديد اللون بناءً على الثيم الحالي
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color textColor =
        isDarkMode ? AppColors.whiteColor : AppColors.lightBlackColor;
    return TextStyle(
      color: textColor,
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }
}

// ResponsiveFontSize :
// 1-sacleFactor
// 2-responsive font size
// 3-(min , max) fontsize

//getResponsiveFontSize function
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

//getScaleFactor function
double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
