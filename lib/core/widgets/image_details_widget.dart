import 'package:flutter/material.dart';

class ImageDetailsWidget extends StatelessWidget {
  const ImageDetailsWidget({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .4,
      width: MediaQuery.sizeOf(context).width,
      child: ClipRRect(
          borderRadius:
              const BorderRadius.only(bottomLeft: Radius.circular(70)),
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          )),
    );
  }
}
