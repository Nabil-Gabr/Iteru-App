// Hotel Search Cubit
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/modules/hotels/domain/entity/hotel_entity.dart';

class SearchHotelCubit extends Cubit<List<HotelEntity>> {
  SearchHotelCubit() : super([]);

  void search(String query, List<HotelEntity> allHotels) {
    final filtered = allHotels.where((hotel) =>
        hotel.name.toLowerCase().contains(query.toLowerCase()) ||
        hotel.city.toLowerCase().contains(query.toLowerCase())).toList();

    emit(filtered);
  }

  void clear() => emit([]);
}
