import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/create_new_password_view_body.dart';

class CreateNewPasswordView extends StatelessWidget {
  const CreateNewPasswordView({super.key});
  static const String routeName = 'CreateNewPasswordView';
  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color appBarColor =
        isDarkMode ? AppColors.darkModePrimary : AppColors.whiteColor;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
      ),
      body: const SafeArea(child: CreateNewPasswordViewBody()),
    );
  }
}
