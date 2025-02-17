

import 'package:flutter/material.dart';
import 'package:iteru_app/core/widgets/museum_list_view_item.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';
class MuseumListView extends StatelessWidget {
  final List<MuseumItemEntity> museumItems;

  const MuseumListView({
    super.key,
    required this.museumItems,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: museumItems
            .map((e) => Padding(
                  padding: const EdgeInsetsDirectional.only(end: 16),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: MuseumListViewItem(
                      museumItemEntity: e,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}









class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}











class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: const TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }
}