import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MasonryGridViewWidget extends StatelessWidget {
  const MasonryGridViewWidget({
    super.key, required this.item, required this.itemBuilder,
  });

  final int item;
  final IndexedWidgetBuilder itemBuilder;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      itemCount: item,
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      itemBuilder: itemBuilder,
    );
  }
}
