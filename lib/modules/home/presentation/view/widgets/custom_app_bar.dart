import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/search_text_field.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    // 🔹 تحديد اللون بناءً على الثيم الحالي
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color containerColor = isDarkMode ? AppColors.darkModePrimary : AppColors.whiteColor;
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        color: containerColor,
        child: Row(
          children: [
            //1:Button Drawer
            GestureDetector(
                onTap: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                child:  Icon(
                  FontAwesomeIcons.bars,
                  size: 34,
                  color: isDarkMode ? AppColors.whiteColor: const Color(0xFF4F200D),
                )),
            //SizedBox
            const SizedBox(
              width: 8,
            ),
            //2: Search text Filed
            const Expanded(
              child: SearchTextField(),
            ),
            //SizedBox
            const SizedBox(
              width: 8,
            ),
            //3: Notifications Icon
             Icon(
              Icons.notifications_none,
              size: 34,
              color: isDarkMode ? AppColors.whiteColor: const Color(0xFF4F200D),
            ),
            const SizedBox(
              width: 8,
            ),
            //4:Location Location
             Icon(
              Icons.location_on_outlined,
              size: 34,
              color: isDarkMode ? AppColors.whiteColor: const Color(0xFF4F200D),
            )
          ],
        ),
      ),
    );
  }
}
