import 'package:flutter/material.dart';
import 'package:iteru_app/core/cache/shared_preferences_singleton.dart';
import 'package:iteru_app/core/constants/constant.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/home/domain/entites/drawer_item_entity.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/drawer_column_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/drawer_item.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/drawer_user_info_list_tile.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/onboarding_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // 🔹 تحديد اللون بناءً على الثيم الحالي
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color containerColor = isDarkMode ? const Color(0xff252836) : const Color(0xffF6F1E9);
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: containerColor,
      child: CustomScrollView(
        slivers: [
          //1-SizedBox==50
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          //2-DrawerUserInfoListTile
          const SliverToBoxAdapter(
            child: DrawerUserInfoListTile(),
          ),
          //3-Divider
          const SliverToBoxAdapter(
            child: Divider(),
          ),
          //4-DrawerColumnSection
          const SliverToBoxAdapter(
            child: DrawerColumnSection(),
          ),

          //5-SliverFillRemaining
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //1-Expanded(SizedBox)
                const Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                // //2-DrawerItem Settings
                // DrawerItem(
                //     drawerItemModel: DrawerItemEntity(
                //         title: 'Settings', image: Assets.imagesIconSettings)),

                //3-DrawerItem Logout
                GestureDetector(
                  onTap: () {
                    CacheHelpe.removeData(key: kIsOnboardingViewSeen);
                    Navigator.of(context)
                        .pushReplacementNamed(OnboardingView.routeName);
                  },
                  child: const DrawerItem(
                      drawerItemModel: DrawerItemEntity(
                          title: 'Logout', image: Assets.imagesIconLogout)),
                ),
                const SizedBox(
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
