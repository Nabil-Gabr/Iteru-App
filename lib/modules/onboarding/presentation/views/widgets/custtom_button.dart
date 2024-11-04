import 'package:flutter/material.dart';

class CusttomButton extends StatelessWidget {
  const CusttomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      required this.text,
      required this.onPressed});
  final Color backgroundColor, textColor;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 37,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 18),
          )),
    );
  }
}
