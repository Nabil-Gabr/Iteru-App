import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/code_validation_view_body.dart';

class CodeValidationView extends StatelessWidget {
  const CodeValidationView({super.key});
  //routeName
  static const String routeName='CodeValidationView';
  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color appBarColor =
        isDarkMode ? AppColors.darkModePrimary : AppColors.whiteColor;
    return Scaffold(
      //AppBar
      appBar: AppBar(backgroundColor: appBarColor,),
      body: const SafeArea(child: CodeValidationViewBody()),
    );
  }
}