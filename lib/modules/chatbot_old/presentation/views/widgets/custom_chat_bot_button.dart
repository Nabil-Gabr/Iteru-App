import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomChatBotButton extends StatelessWidget {
  final void Function() onTap;
  final String image;

  const CustomChatBotButton({
    super.key,
    required this.onTap, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap, child: SvgPicture.asset(image));
  }
}
