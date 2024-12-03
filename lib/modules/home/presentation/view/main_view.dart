import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/custom_bottom_navigation_bar.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/main_view_body.dart';

//1-MainView
class MainView extends StatefulWidget {
  const MainView({super.key});

  //routeName
  static const String routeName = 'MainView';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        onItemTapped: (index) {
          currentViewIndex = index;

          setState(() {});
        },
      ),
      body: MainViewBody(
        currentViewIndex: currentViewIndex,
      ),
    );
  }
}
