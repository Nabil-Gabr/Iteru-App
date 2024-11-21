import 'package:flutter/material.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/code_validation_view_body.dart';

class CodeValidationView extends StatelessWidget {
  const CodeValidationView({super.key});
  
  static const String routeName='CodeValidationView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,),
      body: const SafeArea(child: CodeValidationViewBody()),
    );
  }
}