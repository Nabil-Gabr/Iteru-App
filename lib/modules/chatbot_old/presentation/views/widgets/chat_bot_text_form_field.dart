import 'package:flutter/material.dart';

class ChatBotTextFormField extends StatelessWidget {
  const ChatBotTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(0),
          hintText: "Message Chat Bot",
          hintStyle:
              TextStyle(color: Colors.white, fontSize: 13),
          border:
              OutlineInputBorder(borderSide: BorderSide.none)),
    );
  }
}
