import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/repos/museum_repo/museum_repo.dart';
import 'package:iteru_app/core/services/get_it_service.dart';
import 'package:iteru_app/modules/chatbot_old/presentation/views/chat_view.dart';
import 'package:iteru_app/modules/home/presentation/manager/museum/museum_cubit.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MuseumCubit(
            getIt.get<MuseumRepo>(),
          )..getMuseum(),
        ),
        // BlocProvider(
        //   create: (context) => NewsetBooksCubit(
        //     getIt.get<HomeRepoImpl>(),
        //   )..fetchNewestBooks(),
        // )
      ],
      child: Directionality(
        textDirection: TextDirection.ltr, // Force LTR
        child: Scaffold(
          key: scaffoldState,
          //1:chat button
          floatingActionButton: FloatingActionButton(
            backgroundColor: const Color(0xffFF8400),
            onPressed: () {
              Navigator.of(context).pushNamed(ChatViewOld.routeName);
            },
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
        ),
      ),
    );
  }
}
