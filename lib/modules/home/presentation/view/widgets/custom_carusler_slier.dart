import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/carousel_widget_child.dart';

class CustomCaruslerSlier extends StatelessWidget {
  final CarouselSliderController
      carouselSliderController; // ✅ استخدام النوع الصحيح
  final Function(int) onPageChanged; // ✅ تمرير دالة عند تغيير الصفحة
  final List list;

  const CustomCaruslerSlier({
    super.key,
    required this.carouselSliderController,
    required this.onPageChanged,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: carouselSliderController, // ✅ لا مزيد من الأخطاء هنا
      items: list
          .map((image) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselWidgetChild(image: image), // ✅ تمرير الصورة
              ))
          .toList(), // ✅ تحويل `map` إلى `List<Widget>`
      options: CarouselOptions(
        autoPlayCurve: Curves.linear,
        autoPlay: false,
        viewportFraction: 1,
        aspectRatio: 3 / 1,
        initialPage: 0,
        onPageChanged: (index, reason) {
          onPageChanged(index); // ✅ تحديث الحالة عند تغيير السلايد
        },
      ),
    );
  }
}
