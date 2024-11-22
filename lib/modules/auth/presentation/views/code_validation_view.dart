import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/code_validation_view_body.dart';

class CodeValidationView extends StatelessWidget {
  const CodeValidationView({super.key});
  //routeName
  static const String routeName='CodeValidationView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(backgroundColor: AppColors.whiteColor,),
      body: const SafeArea(child: CodeValidationViewBody()),
    );
  }
}