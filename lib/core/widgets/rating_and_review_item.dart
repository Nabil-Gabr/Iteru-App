import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iteru_app/core/entities/rating_and_review_entity.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';

class RatingAndReviewItem extends StatelessWidget {
  const RatingAndReviewItem({
    super.key,
    required this.ratingAndReviewEntity,
  });
  final RatingAndReviewEntity ratingAndReviewEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //1
              SizedBox(
                width: 50,
                height: 50,
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Image.asset(
                      ratingAndReviewEntity.imageUser,
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                width: 8,
              ),
              //2
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ratingAndReviewEntity.nameUser,
                      style: AppTextStyles.semiBold22(context),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      ratingAndReviewEntity.comment,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Color(0xffA19E98),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        //3
        Expanded(
          child: RatingBarIndicator(
            rating: ratingAndReviewEntity.rating,
            itemBuilder: (context, index) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            itemCount: 5,
            itemSize: 16,
            direction: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
