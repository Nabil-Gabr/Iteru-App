import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/presentation/view/chat_view.dart';
import 'package:iteru_app/modules/home/presentation/view/profile_view.dart';
import 'package:iteru_app/modules/home/presentation/view/sreach_view.dart';
import 'package:iteru_app/modules/home/presentation/view/home_view.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key, required this.currentViewIndex});
  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentViewIndex,
      children: const [HomeView(), ChatView(), SreachView(), ProfileView()],
    );
  }
}
