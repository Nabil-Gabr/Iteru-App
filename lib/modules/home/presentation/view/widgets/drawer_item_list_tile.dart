import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';

class DrawerItemListTile extends StatelessWidget {
  const DrawerItemListTile({
    super.key,
    required this.image,
    required this.title,
  });
  final String image, title;

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
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
    );
  }
}
