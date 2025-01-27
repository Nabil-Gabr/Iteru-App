import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/custom_drawer.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  

  static const String routeName = 'HomeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      floatingActionButton:  FloatingActionButton(
        backgroundColor: const Color(0xffFF8400),
    onPressed: () {  },
    child: const Icon(Icons.chat_rounded,color: Colors.white,),
  ),
      drawer: const CustomDrawer(),
      body: SafeArea(
          child: HomeViewBody(
        scaffoldKey: scaffoldState,
      )),
    );
  }
}
