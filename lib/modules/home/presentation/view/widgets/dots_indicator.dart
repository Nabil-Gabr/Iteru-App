import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator(
      {super.key, required this.currentPageIndex, required this.dotsCount});

  final int currentPageIndex;
  final int dotsCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        dotsCount,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDot(isActive: index == currentPageIndex),
        ),
      ),
    );
  }
}
