
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/entities/rating_and_review_entity.dart';

part 'add_rating_state.dart';

class AddRatingCubit extends Cubit<AddRatingState> {
  AddRatingCubit() : super(AddRatingInitial());
  List<RatingAndReviewEntity> allratingsList = [];
  double averagerating = 0;
  int ratingCounter = 0;
  double allRatings = 0;
  void addRating(RatingAndReviewEntity ratingAndReviewEntity) {
    emit(AddRatingLoading());
    try {
      ratingCounter += 1;
      allRatings += ratingAndReviewEntity.rating;
      calcAverageCount();
      allratingsList.add(ratingAndReviewEntity);
      emit(AddRatingSuccess());
    } on Exception catch (e) {
      emit(AddRatingFailure(errMessage: e.toString()));
    }
  }

  List<RatingAndReviewEntity> getRating() {
    emit(AddRatingLoading());
    try {
      emit(AddRatingSuccess());
      return allratingsList;
    } catch (e) {
      emit(AddRatingFailure(errMessage: e.toString()));
      return [];
    }
  }

  calcAverageCount() {
    averagerating = allRatings / ratingCounter;
  }
}
