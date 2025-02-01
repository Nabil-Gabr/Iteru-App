import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iteru_app/modules/home/domain/entites/drawer_item_entity.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemEntity drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
      // trailing: const SwitchExample(),
    );
  }
}

class DrawerItemModel {}
