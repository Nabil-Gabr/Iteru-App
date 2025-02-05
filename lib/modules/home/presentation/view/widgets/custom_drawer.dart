import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/home/domain/entites/drawer_item_entity.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/drawer_column_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/drawer_item.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/drawer_user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: const Color(0xffffffff),
      child: const CustomScrollView(
        slivers: [
          //1-SizedBox==50
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          //2-DrawerUserInfoListTile
          SliverToBoxAdapter(
            child: DrawerUserInfoListTile(),
          ),
          //3-Divider
          SliverToBoxAdapter(
            child: Divider(),
          ),
          //4-DrawerColumnSection
          SliverToBoxAdapter(
            child: DrawerColumnSection(),
          ),

          //5-SliverFillRemaining
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //1-Expanded(SizedBox)
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                // //2-DrawerItem Settings
                // DrawerItem(
                //     drawerItemModel: DrawerItemEntity(
                //         title: 'Settings', image: Assets.imagesIconSettings)),
                
                //3-DrawerItem Logout
                DrawerItem(
                    drawerItemModel: DrawerItemEntity(
                        title: 'Logout', image: Assets.imagesIconLogout)),
                SizedBox(
                  height: 28,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
