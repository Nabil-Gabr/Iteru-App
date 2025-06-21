import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/widgets/shimmer_museum_card.dart';
import 'package:iteru_app/generated/l10n.dart';
import 'package:iteru_app/modules/home/presentation/manager/museum/museum_cubit.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/header_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/museum_list_view.dart';
import 'package:iteru_app/modules/museum/presentation/view/museum_view.dart';
import 'package:shimmer/shimmer.dart';

class MuseumSection extends StatelessWidget {
  const MuseumSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MuseumCubit, MuseumState>(
      builder: (context, state) {
        if (state is MuseumSuccess) {
          return Column(
            children: [
              HeaderSection(
                title: S.of(context).museum,
                onTap: () {
                  Navigator.of(context).pushNamed(
                    MuseumView.routeName,
                    arguments: state.museumItemEntity,
                  );
                },
              ),
              const SizedBox(height: 16),
              MuseumListView(
                museumItems: state.museumItemEntity.take(3).toList(),
              ),
            ],
          );
        } else if (state is MuseumFailure) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  state.errMessage,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  context.read<MuseumCubit>().getMuseum();
                },
                icon: const Icon(Icons.refresh),
                label: const Text('Retry'),
              ),
            ],
          );
        } else {
          return Shimmer.fromColors(
            baseColor: Colors.white,
            highlightColor: Colors.grey.withOpacity(.6),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsetsDirectional.only(end: 16),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: const ShimmerMuseumCard(),
                    ),
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}

