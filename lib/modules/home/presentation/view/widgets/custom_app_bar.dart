import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iteru_app/core/helpers/functions/switch_language.dart';
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
      child: Directionality(
        textDirection: isArabic() ? TextDirection.ltr : TextDirection.ltr,
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          color: containerColor,
          child: Row(
            children: [
              //1:Button Drawer
              GestureDetector(
                  onTap: () {
                    // scaffoldKey.currentState!.openDrawer();
                    Scaffold.of(context).openDrawer();
                  },
                  child: Icon(
                    FontAwesomeIcons.bars,
                    size: 34,
                    color: isDarkMode ? AppColors.whiteColor : const Color(0xFF4F200D),
                  )),
              const SizedBox(
                width: 8,
              ),
              //2: Search text Filed
              const Expanded(
                child: SearchTextField(),
              ),
              const SizedBox(
                width: 8,
              ),
              //3: Notifications Icon
              Icon(
                Icons.notifications_none,
                size: 34,
                color: isDarkMode ? AppColors.whiteColor : const Color(0xFF4F200D),
              ),
              const SizedBox(
                width: 8,
              ),
              //4:Location Location
              Icon(
                Icons.location_on_outlined,
                size: 34,
                color: isDarkMode ? AppColors.whiteColor : const Color(0xFF4F200D),
              )
            ],
          ),
        ),
      ),
    );
  }
}

