import 'package:flutter/material.dart';

class UserMessage extends StatelessWidget {
  final String userMessage;
  const UserMessage({super.key, required this.userMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          color: Color(0xff7DC9DB),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(16),
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16))),
      child: Text(
        userMessage,
        style: const TextStyle(fontSize: 14, color: Colors.white),
      ),
    );
  }
}
