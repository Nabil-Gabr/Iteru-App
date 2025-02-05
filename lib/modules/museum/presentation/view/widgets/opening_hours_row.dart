import 'package:flutter/material.dart';

class OpeningHoursRow extends StatelessWidget {
  const OpeningHoursRow({
    super.key,
    required this.openingTime,
    required this.closingTime,
  });
  final String openingTime, closingTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.timer_sharp,
          color: Color(0xffFF8400),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: 'Opening Hours:',
                  style: TextStyle(
                      color: Color(0xffC7C7C7),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                const WidgetSpan(
                  child: SizedBox(width: 4), // إضافة تباعد بين النصوص
                ),
                const TextSpan(
                  text: 'From',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                const WidgetSpan(
                  child: SizedBox(width: 4), // إضافة تباعد بين النصوص
                ),
                TextSpan(
                  text: openingTime,
                  style: const TextStyle(
                      color: Color(0xff333333),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                const WidgetSpan(
                  child: SizedBox(width: 4), // إضافة تباعد بين النصوص
                ),
                const TextSpan(
                  text: 'to',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                const WidgetSpan(
                  child: SizedBox(width: 4), // إضافة تباعد بين النصوص
                ),
                TextSpan(
                  text: closingTime,
                  style: const TextStyle(
                      color: Color(0xff333333),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
