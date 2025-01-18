import 'package:flutter/material.dart';

class ActiveButton extends StatelessWidget {
  const ActiveButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 4),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1.5,color: Colors.amber))
      ),
      child: Text(
        text,
        style:
            const TextStyle(fontWeight: FontWeight.w700, color: Colors.amber),
      ),
    );
  }
}
