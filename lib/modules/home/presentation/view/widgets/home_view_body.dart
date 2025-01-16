import 'package:flutter/material.dart';
import 'package:iteru_app/core/constants/constant.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/hotels_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/museum_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/popular_places_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/torism_type_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizintalPadding),
      child: CustomScrollView(
        slivers: [
          //Section 1
          SliverToBoxAdapter(
            child: MuseumSection(),
          ),
          //SizedBox 24
          SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          //Section 2
          SliverToBoxAdapter(
            child: TorismTypeSection(),
          ),
          //SizedBox 24
          SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          //Section 3
          SliverToBoxAdapter(
            child: PopularPlacesSection(),
          ),
          //SizedBox 24
          SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          //Section 4
          SliverToBoxAdapter(
            child: HotelsSection(),
          ),
          //SizedBox 32
          SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
        ],
      ),
    );
  }
}
