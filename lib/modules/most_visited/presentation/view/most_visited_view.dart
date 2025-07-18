import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/generated/l10n.dart';
import 'package:iteru_app/modules/most_visited/presentation/view/widgets/most_visited_view_body.dart';

class MostVisitedView extends StatelessWidget {
  const MostVisitedView({super.key});

  static const String routeName = 'MostVisitedView';
  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: null,
        forceMaterialTransparency: true,
        elevation: 0,
        backgroundColor:
            isDarkMode ? AppColors.darkModePrimary : AppColors.whiteColor,
        centerTitle: true,
        title:  Text(
          S.of(context).most_visited,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: MostVisitedViewBody(),
      ),
    );
  }
}
