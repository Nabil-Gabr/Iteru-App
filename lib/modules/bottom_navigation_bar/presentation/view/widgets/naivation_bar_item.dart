import 'package:flutter/material.dart';
import 'package:iteru_app/modules/bottom_navigation_bar/domain/entitys/bottom_navigation_bar_entity.dart';
import 'package:iteru_app/modules/bottom_navigation_bar/presentation/view/widgets/active_item.dart';
import 'package:iteru_app/modules/bottom_navigation_bar/presentation/view/widgets/in_active_item.dart';

class NaivgationBarItem extends StatelessWidget {
  const NaivgationBarItem(
      {super.key,
      required this.isSelected,
      required this.bottomNavigationBarEntity});

  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
          icon: bottomNavigationBarEntity.activeIcon,
            // image: bottomNavigationBarEntity.activeImage,
            text: bottomNavigationBarEntity.name,
          )
        : InActiveItem(
          icon: bottomNavigationBarEntity.activeIcon,
            // image: bottomNavigationBarEntity.inActiveImage,
            text: bottomNavigationBarEntity.name,
          );
  }
}
