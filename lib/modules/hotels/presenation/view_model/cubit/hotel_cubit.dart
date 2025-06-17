
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/modules/hotels/domain/entity/hotel_entity.dart';
import 'package:iteru_app/modules/hotels/domain/repo/hotel_repo.dart';


part 'hotel_state.dart';

class HotelCubit extends Cubit<HotelState> {
  HotelCubit(this.hotelRepo) : super(HotelInitial());
  final HotelRepo hotelRepo;

  Future<void> getHotelCairo() async {
    emit(HotelLoading());

    var result = await hotelRepo.getHotelCairo();

    result.fold(
      (failure) => emit(HotelFailure(failure.errMessag)),
      (hotel) => emit(HotelSuccess(hotel)),
    );
  }
}
