
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/repos/monument_repo/monument_repo.dart';
import 'package:iteru_app/modules/home/domain/entites/monument_item_entity.dart';


part 'monument_state.dart';

class MonumentCubit extends Cubit<MonumentState> {
  MonumentCubit(this.monumentRepo) : super(MonumentInitial());
  final MonumentRepo monumentRepo;
  Future<void> getMonument() async {
    emit(MonumentLoading());

    var result = await monumentRepo.getMonument();

    result.fold(
      (failure) => emit(MonumentFailure(failure.errMessag)),
      (monument) => emit(MonumentSuccess(monument)),
    );
  }
}
