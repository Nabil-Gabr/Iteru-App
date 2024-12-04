import 'package:flutter/material.dart';
class BottomNavigationBarEntity {
  // final String activeImage, inActiveImage;
  final IconData activeIcon, inActiveIcon;
  final String name;

  BottomNavigationBarEntity(
      {required this.activeIcon,
      required this.inActiveIcon,
      required this.name});
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
      BottomNavigationBarEntity(
          activeIcon: Icons.home_rounded,
          inActiveIcon: Icons.home_outlined,
          // activeImage: Assets.imagesHomeicon,
          // inActiveImage: Assets.imagesHomeicon,
          name: 'Home'),
      BottomNavigationBarEntity(
          activeIcon: Icons.chat_rounded,
          inActiveIcon: Icons.chat_outlined,
          // activeImage: Assets.imagesChatbot,
          // inActiveImage: Assets.imagesChatbot,
          name: 'Chatbot'),
      BottomNavigationBarEntity(
          activeIcon: Icons.search_rounded,
          inActiveIcon: Icons.search_outlined,
          // activeImage: Assets.imagesSearch,
          // inActiveImage: Assets.imagesSearch,
          name: 'Search'),
      BottomNavigationBarEntity(
          activeIcon: Icons.account_circle_rounded,
          inActiveIcon: Icons.account_circle_outlined,
          // activeImage: Assets.imagesProfile,
          // inActiveImage: Assets.imagesProfile,
          name: 'Profile'),
    ];
