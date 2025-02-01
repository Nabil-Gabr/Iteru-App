import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iteru_app/core/constants/constant.dart';
import 'package:iteru_app/core/utils/app_colors.dart';

class MuseumRatingView extends StatelessWidget {
  const MuseumRatingView({super.key});
  static const String routeName = 'MuseumRatingView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //1:AppBar
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      //2:Body
      body: Padding(
        padding: const EdgeInsets.all(kHorizintalPadding),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Align(
              alignment: Alignment.center,
              child: RatingBar.builder(
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              //2-decoration
              decoration: const InputDecoration(
                //2:1-background text feild
                filled: true,
                fillColor: Colors.white,

                //2:3-enabledBorder
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),

                //2:4-focusedBorder
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Colors.amber, width: 1),
                ),

                //2:5-hintText
                hintText: 'Describe your experince',
                hintStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: AppColors.captionColor),
              ),
            )
          ],
        ),
      ),
    );
  }

  
}
