import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.text, required this.icon, });

  final String text;
  // final String image;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 2,
            color: AppColors.primaryColor,
          ),
        ),
        const Expanded(child: SizedBox()),
         Icon(icon,size: 28,color: AppColors.primaryColor,),
        // Container(
        //   color: Colors.transparent,
        //   child: SvgPicture.asset(image),
        // ),
        const SizedBox(
          height: 4,
        ),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w700,color: AppColors.primaryColor),
        ),
        const SizedBox(
          height: 4,
        ),
      ],
    );
  }
}
