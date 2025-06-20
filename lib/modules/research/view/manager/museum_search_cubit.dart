// Museum Search Cubit
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';

class SearchMuseumCubit extends Cubit<List<MuseumItemEntity>> {
  SearchMuseumCubit() : super([]);

  void search(String query, List<MuseumItemEntity> allMuseums) {
    final filtered = allMuseums.where((museum) =>
        museum.name.toLowerCase().contains(query.toLowerCase()) ||
        museum.location.toLowerCase().contains(query.toLowerCase())).toList();

    emit(filtered);
  }

  void clear() => emit([]);
}
