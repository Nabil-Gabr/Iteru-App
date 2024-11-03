import 'package:flutter/material.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/widgets/custtom_button.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/widgets/dots_indicator.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle, required this.currentPageIndex,
  });
  final String image, title, subTitle;
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0,vertical: 32),
        child: Column(
          children: [
            const Expanded(child: SizedBox()),
            Container(
              padding: const EdgeInsets.all(16),
              decoration:  BoxDecoration(
                color: Colors.white.withOpacity(.7),
                borderRadius: const BorderRadius.all(Radius.circular(12))
              ),
              
              child: Column(
                children: [
                  Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                subTitle,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 22,
              ),
               DotsIndicator(currentPageIndex: currentPageIndex,),
              const SizedBox(
                height: 32,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CusttomButton(
                      text: 'Next',
                      backgroundColor:const  Color(0xFFDBB13B).withOpacity(.8),
                      textColor: Colors.white, 
                      onPressed: () {  },
                    ),
                  ),
                ],
              ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}