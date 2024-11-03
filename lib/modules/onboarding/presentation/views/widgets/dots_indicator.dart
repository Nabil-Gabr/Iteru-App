import 'package:flutter/material.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/widgets/custtom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: CustomDotIndicator(),
        ),
      ),
    );
  }
}