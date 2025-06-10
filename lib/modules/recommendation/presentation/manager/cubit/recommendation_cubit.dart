import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/modules/recommendation/domain/entity/recommentation_entity.dart';
import 'package:iteru_app/modules/recommendation/domain/repo/recommendation_repo.dart';

part 'recommendation_state.dart';

class RecommendationCubit extends Cubit<RecommendationState> {
  RecommendationCubit(this.recommendationRepo) : super(RecommendationInitial());
  final RecommendationRepo recommendationRepo;

  Future<void> sendRecommendation({
    required int location,
    required int christian,
    required int grecoRoman,
    required int bislamic,
    required int modernEgypt,
    required int ancientEgypt,
  }) async {
    emit(RecommendationLoading());
    var result = await recommendationRepo.sendRecommendation(
      ancientEgypt: ancientEgypt,
      bislamic: bislamic,
      christian: christian,
      grecoRoman: grecoRoman,
      location: location,
      modernEgypt: modernEgypt,
    );

    result.fold(
      (failuer) => emit(RecommendationFailutr(errorMessage: failuer.errMessag)),
      (recommentationEntity) => emit(
          RecommendationSuccess(recommentationEntity: recommentationEntity)),
    );
  }
}
