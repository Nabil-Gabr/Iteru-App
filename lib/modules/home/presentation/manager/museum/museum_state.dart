part of 'museum_cubit.dart';

@immutable
sealed class MuseumState {}

final class MuseumInitial extends MuseumState {}

class MuseumLoading extends MuseumState {}

class MuseumFailure extends MuseumState {
  final String errMessage;

  MuseumFailure(this.errMessage);
}

class MuseumSuccess extends MuseumState {
  final List<MuseumItemEntity> museumItemEntity;

  MuseumSuccess(this.museumItemEntity);
}
