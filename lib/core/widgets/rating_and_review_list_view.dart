import 'package:flutter/material.dart';
import 'package:iteru_app/core/entities/rating_and_review_entity.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/core/widgets/rating_and_review_item.dart';

class RatingAndReviewListView extends StatelessWidget {
  const RatingAndReviewListView({super.key});
  static const List<RatingAndReviewEntity> items = [
    RatingAndReviewEntity(
        nameUser: "One",
        imageUser: Assets.imagesImageTestMohamed,
        comment:
            'Musume no Tomodachi is a surprisingly poignant and complex story about relationships, loneliness, and the search for connection. It delves into the  ',
        rating: 4.2),
    RatingAndReviewEntity(
        nameUser: "Two",
        imageUser: Assets.imagesImageTestMohamed,
        comment:
            'Musume no Tomodachi is a surprisingly poignant and complex story about relationships, loneliness, and the search for connection. It delves into the  ',
        rating: 4.2),
    RatingAndReviewEntity(
        nameUser: "nameUser",
        imageUser: Assets.imagesImageTestMohamed,
        comment:
            'Musume no Tomodachi is a surprisingly poignant and complex story about relationships, loneliness, and the search for connection. It delves into the  ',
        rating: 4.2),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          // ignore: prefer_const_constructors
          padding: EdgeInsets.only(bottom: 16.0),
          child: RatingAndReviewItem(
            ratingAndReviewEntity: items[index],
          ),
        );
      },
    );
  }
}
