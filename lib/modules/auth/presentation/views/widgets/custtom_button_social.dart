import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CusttomButtonSocial extends StatelessWidget {
  const CusttomButtonSocial(
      {super.key, required this.title, required this.image});
  final String title, image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: const BorderSide(color: Color(0xFFDDDFDF)))),
        onPressed: () {},
        child: ListTile(
          visualDensity:
              const VisualDensity(vertical: VisualDensity.minimumDensity),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          titleTextStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1A1D2E)),
          trailing: SvgPicture.asset(image),
        ),
      ),
    );
  }
}
