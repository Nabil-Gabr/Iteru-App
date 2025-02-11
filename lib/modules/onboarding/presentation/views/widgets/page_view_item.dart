import 'package:flutter/material.dart';
import 'package:iteru_app/core/constants/constant.dart';
import 'package:iteru_app/core/cache/shared_preferences_singleton.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';
import 'package:iteru_app/core/widgets/custom_button.dart';
import 'package:iteru_app/modules/auth/presentation/views/login_view.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/widgets/dots_indicator.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.currentPageIndex,
    this.controller,
    required this.visible,
  });
  final String image, title, subTitle;
  final int currentPageIndex;
  final PageController? controller;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    // 🔹 تحديد اللون بناءً على الثيم الحالي
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color containerColor = isDarkMode
        ? AppColors.darkModeSecounder
        : AppColors.whiteColor.withOpacity(.7);
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Stack(
        children: [
          //backgrount image Page View
          Positioned.fill(
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),

          //Container Details
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.semiBold28(context),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      subTitle,
                      style: AppTextStyles.medium20n(context),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    DotsIndicator(
                      currentPageIndex: currentPageIndex,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CusttomButton(
                            text:
                                currentPageIndex == 2 ? 'Get Started' : 'Next',
                            backgroundColor:
                                AppColors.primaryColor.withOpacity(.8),
                            textColor: AppColors.whiteColor,
                            onPressed: () {
                              if (currentPageIndex == 2) {
                                CacheHelpe.saveData(
                                  key: kIsOnboardingViewSeen,
                                  value: true,
                                );
                                Navigator.of(context)
                                    .pushReplacementNamed(LoginView.routeName);
                              } else {
                                controller!.nextPage(
                                  duration: const Duration(milliseconds: 900),
                                  curve: Curves.easeInOut,
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          //Skip Button
          Visibility(
            visible: visible,
            child: Positioned(
              top: 0,
              right: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 50),
                child: GestureDetector(
                  onTap: () {
                    CacheHelpe.saveData(
                      key: kIsOnboardingViewSeen,
                      value: true,
                    );
                    Navigator.of(context)
                        .pushReplacementNamed(LoginView.routeName);
                  },
                  child: Text(
                    'Skip',
                    style: AppTextStyles.medium24(context),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
