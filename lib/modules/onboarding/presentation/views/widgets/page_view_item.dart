import 'package:flutter/material.dart';
import 'package:iteru_app/core/constants/constant.dart';
import 'package:iteru_app/core/services/shared_preferences_singleton.dart';
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
    this.controller, required this.visible,
  });
  final String image, title, subTitle;
  final int currentPageIndex;
  final PageController? controller;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              image,
              // Assets.imagesBackgroundPageViewItemOneOnobarding,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.7),
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      subTitle,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
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
                            text: currentPageIndex == 2 ? 'Start' : 'Next',
                            backgroundColor:
                                const Color(0xFFDBB13B).withOpacity(.8),
                            textColor: Colors.white,
                            onPressed: () {
                              if (currentPageIndex == 2) {
                                SharedPrefs.setBool(
                                    kIsOnboardingViewSeen, true);
                                Navigator.of(context)
                                    .pushReplacementNamed(LoginView.routeName);
                              } else {
                                // int nextPage = currentPageIndex + 1;
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
                    SharedPrefs.setBool(kIsOnboardingViewSeen, true);
                    Navigator.of(context)
                        .pushReplacementNamed(LoginView.routeName);
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(color: Colors.white),
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
