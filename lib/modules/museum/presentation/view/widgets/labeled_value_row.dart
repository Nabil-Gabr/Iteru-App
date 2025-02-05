import 'package:flutter/material.dart';

class LabeledValueRow extends StatelessWidget {
  const LabeledValueRow({
    super.key,
    required this.widget,
    required this.label,
    required this.value,
  });
  final Widget widget;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget,
        const SizedBox(
          width: 8,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: label,
                style: const TextStyle(
                    color: Color(0xffC7C7C7),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const WidgetSpan(
                child: SizedBox(width: 4), // إضافة تباعد بين النصوص
              ),
              TextSpan(
                text: value,
                style: const TextStyle(
                    color: Color(0xff333333),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
