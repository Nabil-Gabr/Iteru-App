import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.text, required this.image});

  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 2,
            color: Colors.black,
          ),
        ),
        const Expanded(child: SizedBox()),
        Container(
          color: Colors.transparent,
          child: SvgPicture.asset(image),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(text),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
