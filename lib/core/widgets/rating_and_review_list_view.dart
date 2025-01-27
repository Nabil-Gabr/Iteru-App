import 'package:flutter/material.dart';
import 'package:iteru_app/core/widgets/rating_and_review_item.dart';

class RatingAndReviewListView extends StatelessWidget {
  const RatingAndReviewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) {
        
      return const Padding(
        padding: EdgeInsets.only(bottom: 16.0),
        child: RatingAndReviewItem(),
      );
    },);
  }
}