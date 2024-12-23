import 'package:flutter/material.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key,  required this.text, required this.icon});

  // final String image;
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Icon(icon,color: const Color(0xFF777777),),
        // Container(
        //   color: Colors.transparent,
        //   child: SvgPicture.asset(image),
        // ),
        const SizedBox(
          height: 4,
        ),
        Text(text),
      ],
    );
  }
}
