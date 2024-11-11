import 'package:flutter/material.dart';

class CusttomTextFormField extends StatelessWidget {
  const CusttomTextFormField(
      {super.key, this.textInputType, required this.hintText, this.suffixIcon});
  final TextInputType? textInputType;
  final String hintText;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //1-keyboardType
      keyboardType: textInputType,

      //2-decoration
      decoration: InputDecoration(
        //2:1-background text feild
        filled: true,
        fillColor: const Color(0xFFF9FAFA),

        //2:2-border
        border: buildBorder(),

        //2:3-enabledBorder
        enabledBorder: buildBorder(),

        //2:4-focusedBorder
        focusedBorder: buildBorder(),

        //2:5-hintText
        hintText: hintText,
        hintStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: Color(0xFF949D9E)),

        //2:6-suffixIcon
        suffixIcon: Icon(
          suffixIcon,
          color: const Color(0xFFC9CECF),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: Color(0xFFE6E9EA), width: 1),
    );
  }
}
