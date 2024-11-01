import 'package:flutter/material.dart';
import 'package:iteru_app/layouts/layouts.dart';

void main() {
  runApp(const IteruApp());
}

class IteruApp extends StatelessWidget {
  const IteruApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Layouts(),
    );
  }
}
