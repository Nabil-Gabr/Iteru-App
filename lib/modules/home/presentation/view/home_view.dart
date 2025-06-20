import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/repos/monument_repo/monument_repo.dart';
import 'package:iteru_app/core/repos/museum_repo/museum_repo.dart';
import 'package:iteru_app/core/services/get_it_service.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/chat/presentation/view/chat_view.dart';
import 'package:iteru_app/modules/home/presentation/manager/monument/monument_cubit.dart';
import 'package:iteru_app/modules/home/presentation/manager/museum/museum_cubit.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/custom_drawer.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/home_view_body.dart';
import 'package:iteru_app/modules/hotels/domain/repo/hotel_repo.dart';
import 'package:iteru_app/modules/hotels/presenation/view_model/cubit/hotel_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MuseumCubit(getIt.get<MuseumRepo>())..getMuseum(),
        ),
        BlocProvider(
          create: (context) => MonumentCubit(getIt.get<MonumentRepo>())..getMonument(),
        ),
        BlocProvider(
          create: (context) => HotelCubit(getIt.get<HotelRepo>())..getHotel(),
        ),
      ],
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          key: GlobalKey<ScaffoldState>(),
          floatingActionButton: const BouncingChatBotButton(),
          drawer: const CustomDrawer(),
          body: SafeArea(
            child: HomeViewBody(
              scaffoldKey: GlobalKey<ScaffoldState>(),
            ),
          ),
        ),
      ),
    );
  }
}



class BouncingChatBotButton extends StatefulWidget {
  const BouncingChatBotButton({super.key});

  @override
  State<BouncingChatBotButton> createState() => _BouncingChatBotButtonState();
}

class _BouncingChatBotButtonState extends State<BouncingChatBotButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(0, -0.1),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: FloatingActionButton(
        backgroundColor: const Color(0xffFF8400),
        onPressed: () {
          Navigator.of(context).pushNamed(ChatView.routeName);
        },
        child: Image.asset(
          Assets.imagesIconBot,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
