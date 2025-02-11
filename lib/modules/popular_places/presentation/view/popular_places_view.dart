import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/modules/popular_places/presentation/view/widgets/popular_places_view_body.dart';

class PopularPlacesView extends StatelessWidget {
  const PopularPlacesView({super.key});

  static const String routeName = 'PopularPlacesView';
  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        
          surfaceTintColor: null,
          
          elevation: 0,
          backgroundColor: isDarkMode ? AppColors.darkModePrimary : AppColors.whiteColor,
          centerTitle: true,
          title: const Text(
            "Popular Places",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        
      ),
      body: const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.0),
        child:  PopularPlacesViewBody(),
      ),
    );
  }
}
