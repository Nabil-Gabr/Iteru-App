import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});
  static const  String routeName='NotificationView';

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title:const Text('Notification'),
        centerTitle: true,
        surfaceTintColor: null,
        forceMaterialTransparency: true,
        elevation: 0,
        backgroundColor:
            isDarkMode ? AppColors.darkModePrimary : AppColors.whiteColor,
      ),
      body: const Center(child: Text('not notification'),),
    );
  }
}