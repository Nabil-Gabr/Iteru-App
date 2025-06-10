import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/generated/l10n.dart';
import 'package:iteru_app/modules/home/domain/entites/monument_item_entity.dart';
import 'package:iteru_app/modules/tourism_tybpes/presentation/views/widgest/tourism_view_body.dart';

class TourismTypesView extends StatelessWidget {
  const TourismTypesView({super.key, required this.monumentEntity,});
  final List<MonumentEntity> monumentEntity;
  
  //routeName
  static const String routeName = 'TourismTypesView';
  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: null,
          
          elevation: 0,
          backgroundColor: isDarkMode ? AppColors.darkModePrimary : AppColors.whiteColor,
          centerTitle: true,
          title: Text(
            S.of(context).tourism_types,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        body:  TourismViewody(monumentEntity: monumentEntity,));
  }
}
