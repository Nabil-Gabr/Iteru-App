import 'package:flutter/material.dart';

class ImageDetailsWidget extends StatelessWidget {
  const ImageDetailsWidget({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: MediaQuery.sizeOf(context).height * .4,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(70)),
        image: DecorationImage(
          image: NetworkImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),
              ),
            ),

            const SizedBox(width: 24), // تعويض أيقونة أخرى لتوازن التصميم
          ],
        ),
      ),
    );
  }
}
