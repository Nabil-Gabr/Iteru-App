import 'dart:async';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/custom_carusler_slier.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/dots_indicator.dart';

class AdvertisSection extends StatefulWidget {
  const AdvertisSection({super.key});

  @override
  State<AdvertisSection> createState() => _AdvertisSectionState();
}

class _AdvertisSectionState extends State<AdvertisSection> {
  final CarouselSliderController carouselSliderController =
      CarouselSliderController();
  int currentIndex = 0; // ✅ حفظ إندكس السلايد الحالي
  late Timer timer;

  @override
  void initState() {
    super.initState();
    _startAutoPlay(); // ✅ تشغيل المؤقت عند بدء التطبيق
  }

  static const List<String> list = [
    Assets.imagesBackgroundOnboardingScreenOne,
    Assets.imagesNationalMuseumOfCivilization880,
    Assets.imagesCroppedAlexandria,
    Assets.imagesEgyptianMuseum
  ];

  void _startAutoPlay() {
    timer = Timer.periodic(const Duration(seconds: 7), (timer) {
      if (mounted) {
        setState(() {
          currentIndex =
              ((currentIndex + 1) % list.length).toInt(); // ✅ ضمان أن يكون int
        });
        carouselSliderController
            .animateToPage(currentIndex); // ✅ استخدم المتغير الصحيح
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomCaruslerSlier(
          carouselSliderController: carouselSliderController,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index; // ✅ تحديث الـ index عند تغيير السلايد
            });
          },
          list: list,
        ),
        const SizedBox(height: 10),
        DotsIndicator(
          currentPageIndex: currentIndex,
          dotsCount: list.length,
        )
      ],
    );
  }
}
