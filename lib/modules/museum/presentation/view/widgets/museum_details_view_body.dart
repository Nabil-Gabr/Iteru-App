import 'package:flutter/material.dart';
import 'package:iteru_app/core/widgets/image_details_widget.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/screen_details_action.dart';

class MuseumDetailsViewBody extends StatelessWidget {
  const MuseumDetailsViewBody({super.key, required this.museumItemEntity});
  final MuseumItemEntity museumItemEntity;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              //1:Image
              ImageDetailsWidget(image: museumItemEntity.coverImage,title: museumItemEntity.name,),
              //2:SizedBox 16
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        //3:ScreenDetailsAction
        SliverToBoxAdapter(
          child: ScreenDetailsAction(
            museumItemEntity: museumItemEntity,
          ),
        )
      ],
    );
  }
}
