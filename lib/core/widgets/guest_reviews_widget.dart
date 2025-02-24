import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/addrating/add_rating_cubit.dart';
import 'package:iteru_app/core/widgets/average_rating_to_item.dart';

// تم التعديل
class GuestReviewsWidget extends StatelessWidget {
  const GuestReviewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var addRatingCubit = context.watch<AddRatingCubit>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 37,
              height: 34,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Color(0xffFFC107),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8))),
              child: Text(
                addRatingCubit.averagerating.toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            const Column(
              children: [
                Text(
                  "Guest reviews",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFFC107)),
                ),
                // Text(
                //   "see all 40 reviews",
                //   style: TextStyle(fontSize: 10, color: Color(0xffA19E98)),
                // ),
              ],
            )
          ],
        ),
        AverageRatingToItem(
          rating: addRatingCubit.averagerating,
        )
      ],
    );
  }
}
