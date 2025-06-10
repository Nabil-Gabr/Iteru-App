import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/widgets/shimmer_museum_card.dart';
import 'package:iteru_app/generated/l10n.dart';
import 'package:iteru_app/modules/home/presentation/manager/monument/monument_cubit.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/header_section.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/museum_list_view.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/tourism_types_list_view.dart';
import 'package:iteru_app/modules/tourism_tybpes/presentation/views/tourism_types_view.dart';
import 'package:shimmer/shimmer.dart';

class TorismTypeSection extends StatelessWidget {
  const TorismTypeSection({
    super.key,
  });

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
                Navigator.of(context).pushNamed(TourismTypesView.routeName,arguments: state.monumentItemEntity);
              },
            ),
            const SizedBox(
              height: 16,
            ),
             TourismTypesListView(monumentEntity: state.monumentItemEntity.take(3).toList(),)
          ],
        );
        } else if (state is MonumentFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          // 🔹 عرض Shimmer أثناء التحميل
          return Shimmer.fromColors(
            baseColor: Colors.white,
            highlightColor: Colors.grey.withOpacity(.6),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  3, // عدد العناصر الهيكلية المؤقتة
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
