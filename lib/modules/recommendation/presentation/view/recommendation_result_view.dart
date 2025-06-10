import 'package:flutter/material.dart';
import 'package:iteru_app/modules/recommendation/domain/entity/recommentation_entity.dart';

class RecommendationResultView extends StatelessWidget {
  static const routeName = 'RecommendationResultView';

  final List<RecommentationEntity> results;

  const RecommendationResultView({super.key, required this.results});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommended Places'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: results.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final item = results[index];
          return Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.orange.shade50,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.orange.shade200),
            ),
            child: Text(
              item.recommendation,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          );
        },
      ),
    );
  }
}
