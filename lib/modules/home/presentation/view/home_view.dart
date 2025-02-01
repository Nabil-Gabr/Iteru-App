import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/custom_drawer.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  //routeName
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
      //1:chat button
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffFF8400),
        onPressed: () {},
        child: const Icon(
          Icons.chat_rounded,
          color: Colors.white,
        ),
      ),
      //2: Drawer
      drawer: const CustomDrawer(),
      //3:Body
      body: SafeArea(
          child: HomeViewBody(
        scaffoldKey: scaffoldState,
      )),
    );
  }
}
