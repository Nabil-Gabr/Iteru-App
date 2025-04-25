import 'package:flutter/material.dart';
import 'package:iteru_app/core/constants/constant.dart';
import 'package:iteru_app/core/cache/shared_preferences_singleton.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/auth/presentation/views/login_view.dart';
import 'package:iteru_app/modules/home/presentation/view/home_view.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/onboarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  //initState
  @override
  void initState() {
    //excuteNaviagtion function
    excuteNaviagtion();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(Assets.imagesWhatsAppImage),
    );
  }

  //excuteNaviagtion function implementation
  void excuteNaviagtion() {
    Future.delayed(
      const Duration(seconds: 3),
      () async {
        bool isOnboardingViewSeen =
            CacheHelpe.getData(key: kIsOnboardingViewSeen) ?? false;

        if (isOnboardingViewSeen) {
          // check if token exists
          String? token = CacheHelpe.getData(key: 'token');
          if (token == null) {
            Navigator.pushReplacementNamed(context, LoginView.routeName);
          } else {
            Navigator.pushReplacementNamed(context, HomeView.routeName);
          }
        } else {
          Navigator.pushReplacementNamed(context, OnboardingView.routeName);
        }
      },
    );
  }
}
