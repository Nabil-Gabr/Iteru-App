import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/widgets/custtom_button.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/widgets/dots_indicator.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.currentPageIndex,
  });
  final String image, title, subTitle;
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              Assets.imagesBackgroundPageViewItemOneOnobarding,
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
                            text: 'Next',
                            backgroundColor:
                                const Color(0xFFDBB13B).withOpacity(.8),
                            textColor: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
