//3:BookingWidget
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/addrating/add_rating_cubit.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';
import 'package:iteru_app/core/widgets/guest_reviews_widget.dart';
import 'package:iteru_app/core/widgets/rating_and_review_list_view.dart';
import 'package:iteru_app/modules/museum/presentation/view/museum_rating_view.dart';

// تم التعديل
class RatingWidget extends StatefulWidget {
  const RatingWidget({
    super.key,
  });

  @override
  State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  @override
  void initState() {
    BlocProvider.of<AddRatingCubit>(context).getRating();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(MuseumRatingView.routeName,arguments:BlocProvider.of<AddRatingCubit>(context) );
                },
                child: const Text(
                  'write a review',
                  style: TextStyle(color: Colors.blue),
                )),
            const SizedBox(
              height: 16,
            ),
             Text(
              "Guest reviews",
              style: AppTextStyles.semiBold20(context),
            ),
            const SizedBox(
              height: 8,
            ),
            const Column(
              children: [
                GuestReviewsWidget(),
                Divider(),
                SizedBox(
                  height: 16,
                ),
                RatingAndReviewListView(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
