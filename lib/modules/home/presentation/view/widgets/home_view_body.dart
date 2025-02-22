
import 'package:flutter/material.dart';
import 'package:iteru_app/core/constants/constant.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/advertis_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/hotels_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/most_visited_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/museum_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/torism_type_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
      child: CustomScrollView(
        slivers: [
          //1: CustomAppBar
          SliverToBoxAdapter(
            child: CustomAppBar(
              scaffoldKey: scaffoldKey,
            ),
          ),
          //SizedBox
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          const SliverToBoxAdapter(
            child:  AdvertisSection(),
          ),
          //           const SliverToBoxAdapter(
          //   child: SizedBox(
          //     height: 24,
          //   ),
          // ),
          //Section 2
          const SliverToBoxAdapter(
            child: TorismTypeSection(),
          ),
          //SizedBox 24
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          //Section 1
          const SliverToBoxAdapter(
            child: MuseumSection(),
          ),
          //SizedBox 24
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          
          
          // //Section 3
          // const SliverToBoxAdapter(
          //   child: PopularPlacesSection(),
          // ),
          // //SizedBox 24
          // const SliverToBoxAdapter(
          //   child: SizedBox(
          //     height: 24,
          //   ),
          // ),
          // //Section 4
          const SliverToBoxAdapter(
            child: MostVisitedSection(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          const SliverToBoxAdapter(
            child: HotelsSection(),
          ),
          //SizedBox 32
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
        ],
      ),
    );
  }
}
