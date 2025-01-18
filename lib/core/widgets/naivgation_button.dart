import 'package:flutter/material.dart';
import 'package:iteru_app/core/widgets/active_button.dart';
import 'package:iteru_app/core/widgets/in_active_button.dart';

class NaivgationButton extends StatelessWidget {
  const NaivgationButton({
    super.key,
    required this.isSelected,
    required this.text,
  });

  final bool isSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveButton(
            text: text,
          )
        : InActiveButton(
            text: text,
          );
  }
}
