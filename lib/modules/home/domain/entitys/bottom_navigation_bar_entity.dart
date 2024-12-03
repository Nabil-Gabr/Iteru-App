import 'package:iteru_app/core/utils/app_images.dart';

class BottomNavigationBarEntity {
  final String activeImage, inActiveImage;
  final String name;

  BottomNavigationBarEntity(
      {required this.activeImage,
      required this.inActiveImage,
      required this.name});
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
      BottomNavigationBarEntity(
          activeImage: Assets.imagesHomeicon,
          inActiveImage: Assets.imagesHomeicon,
          name: 'Home'),
      BottomNavigationBarEntity(
          activeImage: Assets.imagesChatbot,
          inActiveImage: Assets.imagesChatbot,
          name: 'Chatbot'),
      BottomNavigationBarEntity(
          activeImage: Assets.imagesSearch,
          inActiveImage: Assets.imagesSearch,
          name: 'Search'),
      BottomNavigationBarEntity(
          activeImage: Assets.imagesProfile,
          inActiveImage: Assets.imagesProfile,
          name: 'Profile'),
    ];
