//3:BookingWidget
import 'package:flutter/material.dart';
import 'package:iteru_app/core/widgets/guest_reviews_widget.dart';
import 'package:iteru_app/core/widgets/rating_and_review_list_view.dart';
import 'package:iteru_app/modules/museum/presentation/view/museum_rating_view.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      //1
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(MuseumRatingView.routeName);
            },
              child: const Text(
            'write a review',
            style: TextStyle(color: Colors.blue),
          )),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Guest reviews",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          const SizedBox(
            height: 8,
          ),
          const GuestReviewsWidget(),
          const Divider(),
          const SizedBox(
            height: 16,
          ),
          const RatingAndReviewListView()
        ],
      ),
    );
  }
}
