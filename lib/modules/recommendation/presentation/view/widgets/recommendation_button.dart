import 'package:flutter/material.dart';

class RecommendationButton extends StatelessWidget {
  final bool isEnabled;
  final VoidCallback onPressed;

  const RecommendationButton({
    super.key,
    required this.isEnabled,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: isEnabled ? onPressed : null,
        icon: const Icon(Icons.recommend),
        label: const Text('Get Recommendations'),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
