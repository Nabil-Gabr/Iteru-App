import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iteru_app/core/addrating/add_rating_cubit.dart';
import 'package:iteru_app/core/constants/constant.dart';
import 'package:iteru_app/core/entities/rating_and_review_entity.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/core/widgets/custom_button_rating.dart';
import 'package:iteru_app/core/widgets/custom_text_form_filed_rating.dart';

class MuseumRatingView extends StatelessWidget {
  const MuseumRatingView({super.key});
  static const String routeName = 'MuseumRatingView';
// تم التعديل
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Give Feedback",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black87),
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: const MuseumRatingViewBody());
  }
}

/// تم التعديل
class MuseumRatingViewBody extends StatefulWidget {
  const MuseumRatingViewBody({super.key});

  @override
  State<MuseumRatingViewBody> createState() => _MuseumRatingViewBodyState();
}

class _MuseumRatingViewBodyState extends State<MuseumRatingViewBody> {
  final TextEditingController comment = TextEditingController();
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(kHorizintalPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "How was your experience?",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87),
            ),
            const SizedBox(
              height: 10,
            ),
            RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                setState(() {
                  this.rating = rating;
                });
              },
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Describe your experince",
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormFiledRating(
              textEditingController: comment,
            ),
            const SizedBox(
              height: 20,
            ),
            BlocConsumer<AddRatingCubit, AddRatingState>(
              listener: (context, state) {
                if (state is AddRatingSuccess) {
                  Navigator.of(
                    context,
                  ).pop();
                }
              },
              builder: (context, state) {
                return CustomButtonRating(
                  onPresses: () {
                    if (rating != 0.0) {
                      RatingAndReviewEntity ratingAndReviewEntity =
                          RatingAndReviewEntity(
                              nameUser: "James Alex",
                              imageUser: Assets.imagesPersonalOne,
                              comment: comment.text,
                              rating: rating);
                      context
                          .read<AddRatingCubit>()
                          .addRating(ratingAndReviewEntity);
                    } else {
                      AnimatedSnackBar.material(
                        "please add rating",
                        type: AnimatedSnackBarType.warning,
                        duration: const Duration(seconds: 2),
                      ).show(context);
                    }
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
