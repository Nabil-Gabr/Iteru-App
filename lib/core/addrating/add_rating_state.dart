part of 'add_rating_cubit.dart';

@immutable
sealed class AddRatingState {}

final class AddRatingInitial extends AddRatingState {}

final class AddRatingLoading extends AddRatingState {}

final class AddRatingSuccess extends AddRatingState {}
final class AddRatingFailure extends AddRatingState {
  final String errMessage;

  AddRatingFailure({required this.errMessage});
  
}

