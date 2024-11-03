import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 17,
      height: 4,
      decoration: const BoxDecoration(
          color: Color(0xFFDBB13B),
          borderRadius: BorderRadius.all(Radius.circular(8))),
    );
  }
}