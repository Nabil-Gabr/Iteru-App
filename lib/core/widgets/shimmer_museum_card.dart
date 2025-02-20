import 'package:flutter/material.dart';
import 'package:iteru_app/core/widgets/custom_shimmer.dart';

class ShimmerMuseumCard extends StatelessWidget {
  const ShimmerMuseumCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
        aspectRatio: 265 / 84,
        child: CustomShimmer(),
      );
  }
}