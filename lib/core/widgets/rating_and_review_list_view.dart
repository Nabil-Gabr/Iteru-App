import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/addrating/add_rating_cubit.dart';
import 'package:iteru_app/core/entities/rating_and_review_entity.dart';
import 'package:iteru_app/core/widgets/rating_and_review_item.dart';

class RatingAndReviewListView extends StatelessWidget {
  const RatingAndReviewListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<RatingAndReviewEntity> items =
        context.watch<AddRatingCubit>().allratingsList;
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: RatingAndReviewItem(
            ratingAndReviewEntity: items[index],
          ),
        );
      },
    );
  }
}
