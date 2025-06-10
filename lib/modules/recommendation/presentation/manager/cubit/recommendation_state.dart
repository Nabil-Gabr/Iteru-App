part of 'recommendation_cubit.dart';

@immutable
sealed class RecommendationState {}

final class RecommendationInitial extends RecommendationState {}

final class RecommendationSuccess extends RecommendationState {
  final List<RecommentationEntity> recommentationEntity;

  RecommendationSuccess({required this.recommentationEntity});
}

final class RecommendationLoading extends RecommendationState {}

final class RecommendationFailutr extends RecommendationState {
  final String errorMessage;

  RecommendationFailutr({required this.errorMessage});
}
