import 'package:flutter/material.dart';
import 'package:iteru_app/core/constants/constant.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/museum_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/torism_type_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizintalPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: MuseumSection(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 24,),
          ),
          SliverToBoxAdapter(
            child: TorismTypeSection(),
          ),
        ],
      ),
    );
  }
}


