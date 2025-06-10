part of 'monument_cubit.dart';

@immutable
sealed class MonumentState {}

final class MonumentInitial extends MonumentState {}

class MonumentLoading extends MonumentState {}

class MonumentFailure extends MonumentState {
  final String errMessage;

  MonumentFailure(this.errMessage);
}

class MonumentSuccess extends MonumentState {
  final List<MonumentEntity> monumentItemEntity;

  MonumentSuccess(this.monumentItemEntity);
}
