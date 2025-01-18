import 'package:flutter/material.dart';

class InActiveButton extends StatelessWidget {
  const InActiveButton({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
    );
  }
}
