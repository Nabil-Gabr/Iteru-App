import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: TextField(
        //1-decoration
        decoration: InputDecoration(
            //1:1-fillColor
            filled: true,
            fillColor: Colors.white,

            //1:2-border
            border: buildBorder(),

            //1:3-enabledBorder
            enabledBorder: buildBorder(),

            //1:4-focusedBorder
            focusedBorder: buildBorder(),

            //1:5-hintText
            hintText: 'Search',
            hintStyle: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Color(0xFFA19E98)),
            //1:6-prefixIcon
            prefixIcon: const Icon(
              Icons.search,
              size: 20,
              color: Color(0xFFA19E98)
            )),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: Color(0xFF4F200D), width: 1.2),
    );
  }
}
