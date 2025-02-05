import 'package:flutter/material.dart';

class TipCard extends StatelessWidget {
  const TipCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.index,
  });
  final String title;
  final String subTitle;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text((index +1).toString(),
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
            const Text('-',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
            Text(title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Text(
            subTitle,
            style: const TextStyle(
                color: Color(0xff777777),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}