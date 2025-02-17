import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/repos/museum_repo/museum_repo.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';

part 'museum_state.dart';

class MuseumCubit extends Cubit<MuseumState> {
  MuseumCubit(this.museumRepo) : super(MuseumInitial());
  final MuseumRepo museumRepo;

  Future<void> getMuseum() async {
    emit(MuseumLoading());

    var result = await museumRepo.getMuseum();

    result.fold(
      (failure) => emit(MuseumFailure(failure.errMessag)),
      (museum) => emit(MuseumSuccess(museum)),
    );
  }
}
