import 'package:flutter/material.dart';

class ArrowBackButton extends StatelessWidget {
  final void Function() onPressed;
  const ArrowBackButton({
    super.key, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: const EdgeInsets.all(0),
        style: IconButton.styleFrom(padding: const EdgeInsets.all(0)),
        onPressed: onPressed,
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ));
  }
}
