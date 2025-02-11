import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/drawer_switch.dart';

class DrawerItemSwitch extends StatelessWidget {
  const DrawerItemSwitch({
    super.key,
    required this.image,
    required this.title, required this.themeMode,
  });
  final String image, title;
  //ThemeMode
  final ThemeMode themeMode;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(image),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          title,
          style: AppTextStyles.medium20n(context),
        ),
      ),
      trailing:  DrawerSwitch(themeMode: themeMode,),
    );
  }
}
