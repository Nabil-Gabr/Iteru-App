import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/widgets/page_view_item.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageViewItem(
          image: Assets.imagesBackgroundOnboardingScreenOne,
          title: 'Embark On Your Simple Travel Experience',
          subTitle:
              'Enjoy a Smooth, stress-free travel Journey with ease and simplicity every step.',
        ),

        PageViewItem(
          image: Assets.imagesBackgroundOnboardingScreenTwo,
          title: 'Embark On Your Simple Travel Experience',
          subTitle:
              'Enjoy a Smooth, stress-free travel Journey with ease and simplicity every step.',
        ),

        PageViewItem(
          image: Assets.imagesBackgroundOnboardingScreenThree,
          title: 'Embark On Your Simple Travel Experience',
          subTitle:
              'Enjoy a Smooth, stress-free travel Journey with ease and simplicity every step.',
        ),
      ],
    );
  }
}