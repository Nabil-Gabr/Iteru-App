import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/size_config.dart';

abstract class AppTextStyles {
  //After Auth//
  //ضفت ال text Styles بخصوص ال home page and museum detaild تحديدا ال overView 
  // ولكن لم استعملها في هذهرالصفحات الي الان بسبب responsive fpont size الي حين ايجاد حل 
  
  //عدد التكرار =1
  static TextStyle bold02(BuildContext context) {
    return TextStyle(
      //عدد تكرار اللون = 1
      color: AppColors.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  //عدد التكرار =1
  static TextStyle bold12(BuildContext context) {
    return TextStyle(
      //عدد تكرار اللون = 1
      color: Colors.black45,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  //عدد التكرار =4
  static TextStyle regular14(BuildContext context) {
    return TextStyle(
      //عدد تكرار اللون = 2
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  //عدد التكرار =1
  static TextStyle bold14(BuildContext context) {
    return TextStyle(
      //عدد تكرار اللون = 1
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  //عدد التكرار =4
  static TextStyle medium16(BuildContext context) {
    return TextStyle(
      //عدد تكرار اللون = 4
      color: AppColors.blackColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  //عدد التكرار =3
  static TextStyle regular16(BuildContext context) {
    return TextStyle(
      //عدد تكرار اللون = 3
      color: const Color(0xff333333),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  //عدد التكرار =1
  static TextStyle regular18(BuildContext context) {
    return TextStyle(
      color: const Color(0xff777777),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  //عدد التكرار =1
  static TextStyle semiBold18(BuildContext context) {
    return TextStyle(
      color: AppColors.blackColor,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  //عدد التكرار =1
  static TextStyle regular20(BuildContext context) {
    return TextStyle(
      //عدد تكرار اللون = 1
      color: AppColors.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  //عدد التكرار =1
  static TextStyle medium20(BuildContext context) {
    return TextStyle(
      //عدد تكرار اللون = 1
      color: AppColors.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
//fontSize = 15
  static TextStyle semiBold15(BuildContext context) {
    return TextStyle(
      color: AppColors.captionColor,
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

//fontSize = 16

  static TextStyle semiBold16(BuildContext context) {
    return TextStyle(
      color: AppColors.captionColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold16(BuildContext context) {
    return TextStyle(
      color: AppColors.blackColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

//fontSize = 16
  static TextStyle medium18(BuildContext context) {
    return TextStyle(
      color: AppColors.blackColor,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle semiBold20(BuildContext context) {
    return TextStyle(
      color: AppColors.lightBlackColor,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

//fontSize = 24
  static TextStyle semiBold24(BuildContext context) {
    return TextStyle(
      color: AppColors.blackColor,
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      //   fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

//fontSize = 30
  static TextStyle bold30(context) {
    return TextStyle(
      color: AppColors.lightBlackColor,
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
