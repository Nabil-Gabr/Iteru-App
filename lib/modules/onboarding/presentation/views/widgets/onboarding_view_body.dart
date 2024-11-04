import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/widgets/page_view_item.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentPageIndex = pageController.page!.round();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          currentPageIndex: currentPageIndex,
          image: Assets.imagesBackgroundOnboardingScreenOne,
          title: 'Embark On Your Simple Travel Experience',
          subTitle:
              'Enjoy a Smooth, stress-free travel Journey with ease and simplicity every step.',
        ),
        PageViewItem(
          currentPageIndex: currentPageIndex,
          image: Assets.imagesBackgroundOnboardingScreenTwo,
          title: 'Embark On Your Simple Travel Experience',
          subTitle:
              'Enjoy a Smooth, stress-free travel Journey with ease and simplicity every step.',
        ),
        PageViewItem(
          currentPageIndex: currentPageIndex,
          image: Assets.imagesBackgroundOnboardingScreenThree,
          title: 'Embark On Your Simple Travel Experience',
          subTitle:
              'Enjoy a Smooth, stress-free travel Journey with ease and simplicity every step.',
        ),
      ],
    );
  }
}
