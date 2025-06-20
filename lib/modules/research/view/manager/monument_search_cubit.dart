// Monument Search Cubit
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/modules/home/domain/entites/monument_item_entity.dart';

class SearchMonumentCubit extends Cubit<List<MonumentEntity>> {
  SearchMonumentCubit() : super([]);

  void search(String query, List<MonumentEntity> allMonuments) {
    final filtered = allMonuments.where((monument) =>
        monument.name.toLowerCase().contains(query.toLowerCase()) ||
        monument.location.toLowerCase().contains(query.toLowerCase())).toList();

    emit(filtered);
  }

  void clear() => emit([]);
}