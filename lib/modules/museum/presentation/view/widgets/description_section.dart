import 'package:flutter/material.dart';
import 'package:iteru_app/core/widgets/custom_background_container.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    super.key,
    required this.description,
  });
  final String description;

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'Description',
          style: TextStyle(
              color: Color(0xffFF8400),
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 22,
        ),
        Text(description)
      ]),
    );
  }
}
