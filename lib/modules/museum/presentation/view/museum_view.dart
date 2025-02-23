import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/generated/l10n.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/museum_view_body.dart';

class MuseumView extends StatelessWidget {
  const MuseumView({super.key, required this.museumItemEntity});
  final List<MuseumItemEntity> museumItemEntity;

  //routeName
  static const String routeName = 'MuseumView';
  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    
        
    return Scaffold(
      //1:AppBar
      appBar: AppBar(
        surfaceTintColor: null,
        elevation: 0,
        backgroundColor: isDarkMode ? AppColors.darkModePrimary : AppColors.whiteColor,
        centerTitle: true,
        title:  Text(
          S.of(context).museum,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      //2:Body
      body:  MuseumViewBody(museumItemEntity: museumItemEntity,),
    );
  }
}
