//3:MyWidgetColumn
import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/drawer_item_list_tile.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/drawer_item_switch.dart';

class DrawerColumnSection extends StatelessWidget {
  const DrawerColumnSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DrawerItemListTile(
          image: Assets.imagesIconEditProfile,
          title: 'Edit profile',
        ),
        SizedBox(
          height: 16,
        ),
        DrawerItemListTile(
          image: Assets.imagesIconLanguage,
          title: 'Language',
        ),
        SizedBox(
          height: 16,
        ),
        DrawerItemSwitch(
          image: Assets.imagesIconNotification,
          title: 'Notification',
        ),
        SizedBox(
          height: 16,
        ),
        DrawerItemSwitch(
          image: Assets.imagesIconDarkMode,
          title: 'Dark Mode',
        ),
        SizedBox(
          height: 16,
        ),
        DrawerItemListTile(
          image: Assets.imagesIconSupport,
          title: 'Support',
        ),
      ],
    );
  }
}
