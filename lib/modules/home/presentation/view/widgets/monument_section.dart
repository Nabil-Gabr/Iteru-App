import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/widgets/shimmer_museum_card.dart';
import 'package:iteru_app/generated/l10n.dart';
import 'package:iteru_app/modules/home/presentation/manager/monument/monument_cubit.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/header_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/tourism_types_list_view.dart';
import 'package:iteru_app/modules/tourism_tybpes/presentation/views/monument_view.dart';
import 'package:shimmer/shimmer.dart';

class MonumentSection extends StatelessWidget {
  const MonumentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MonumentCubit, MonumentState>(
      builder: (context, state) {
        if (state is MonumentSuccess) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(
                title: S.of(context).tourism_types,
                onTap: () {
                  Navigator.of(context).pushNamed(
                    MonumentView.routeName,
                    arguments: state.monumentItemEntity,
                  );
                },
              ),
              const SizedBox(height: 16),
              TourismTypesListView(
                monumentEntity: state.monumentItemEntity.take(3).toList(),
              ),
            ],
          );
        } else if (state is MonumentFailure) {
          return Column(
            children: [
              const Icon(Icons.error_outline, color: Colors.red, size: 48),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  state.errMessage, // ✅ هنا بنعرض رسالة الخطأ الفعلية
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  context.read<MonumentCubit>().getMonument();
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

