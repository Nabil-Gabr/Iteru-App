import 'package:flutter/material.dart';

class OverViewWidget extends StatelessWidget {
  const OverViewWidget({
    super.key,
    required this.textOverView,
  });
  final String textOverView;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
      child: Column(
        children: [
          Text(textOverView),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
