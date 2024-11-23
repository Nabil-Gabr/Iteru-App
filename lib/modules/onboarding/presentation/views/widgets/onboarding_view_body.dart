import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/widgets/page_view_item.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  //pageController
  late PageController pageController;
  //currentPageIndex
  int currentPageIndex = 0;
  
  //initState
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
    //PageView
    return PageView(
      controller: pageController,
      children: [
        //PageViewItem One
        PageViewItem(
          visible: true,
          controller: pageController,
          currentPageIndex: currentPageIndex,
          image: Assets.imagesPyramids,
          title: 'Explore Egypt Effortlessly',
          subTitle:
              'Discover cultural, historical, and entertainment spots with personalized guidance at your fingertips',
        ),

        //PageViewItem Two
        PageViewItem(
          visible: true,
          controller: pageController,
          currentPageIndex: currentPageIndex,
          image: Assets.imagesBackgroundOnboardingScreenTwo,
          title: 'Your Virtual Travel Companion',
          subTitle:
              'Chat with our smart bot to uncover Egypt’s secrets, history, and attractions anytime,anywhere',
        ),

        //PageViewItem Three
        PageViewItem(
          visible: false,
          controller: pageController,
          currentPageIndex: currentPageIndex,
          image: Assets.imagesBackgroundOnboardingScreenOne,
          title: 'Navigate with Ease',
          subTitle:
              'Enjoy interactive maps, voice-guided tours, and seamless travel support designed just for you',
        ),
      ],
    );
  }
}
