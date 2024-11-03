import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.active});
  final bool active;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: active ? 28 : 12,
      height: 5,
      decoration: BoxDecoration(
          color: active ? const Color(0xFFDBB13B) :  Colors.black,
          borderRadius: const BorderRadius.all(Radius.circular(8))),
    );
  }
}