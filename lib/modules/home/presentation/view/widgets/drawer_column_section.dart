//3:MyWidgetColumn
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/Theme/theme_cubit.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/generated/l10n.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/drawer_item_list_tile.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/drawer_item_switch.dart';

class DrawerColumnSection extends StatelessWidget {
  const DrawerColumnSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         DrawerItemListTile(
          image: Assets.imagesIconEditProfile,
          title: S.of(context).edit_profile,
        ),
        const SizedBox(height: 16),
        const DrawerItemSwitchLanguage(
          image: Assets.imagesIconLanguage,
          title: 'Language',
        ),
        const SizedBox(height: 16),
        BlocBuilder<ThemeCubit, ThemeMode>(
          builder: (context, themeMode) {
            return DrawerItemSwitch(
              image: Assets.imagesIconDarkMode,
              title: S.of(context).dark_mode,
              themeMode: themeMode,
            );
          },
        ),
        const SizedBox(height: 16),
         DrawerItemListTile(
          image: Assets.imagesIconSupport,
          title: S.of(context).support,
        ),
      ],
    );
  }
}

