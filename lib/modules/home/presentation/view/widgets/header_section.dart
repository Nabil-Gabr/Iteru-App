import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
    required this.title,
    required this.textButton, this.onTap,
  });
  final String title;
  final String textButton;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 26,
            width: 72,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                border: Border.all(color: const Color(0xffFF8400))),
            child: Text(
              textButton,
              style: const TextStyle(
                  color: Color(0xffFF8400),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ),
        )
      ],
    );
  }
}
