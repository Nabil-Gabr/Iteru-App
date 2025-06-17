part of 'hotel_cubit.dart';

@immutable
sealed class HotelState {}

final class HotelInitial extends HotelState {}
class HotelLoading extends HotelState {}

class HotelFailure extends HotelState {
  final String errMessage;

  HotelFailure(this.errMessage);
}

class HotelSuccess extends HotelState {
  final List<HotelEntity> hotelEntity;

  HotelSuccess(this.hotelEntity);
}
