import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.onTap,
    required this.text, required this.alignment, required this.textColor,
  });
  final void Function()? onTap;
  final String text;
  final AlignmentGeometry alignment;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
          alignment: alignment,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          )),
    );
  }
}
