import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/domain/entites/most_visited_item_entity.dart';
import 'package:iteru_app/modules/most_visited/presentation/view/widgets/over_view.dart';

class MostVisitedDetailsViewBody extends StatelessWidget {
  const MostVisitedDetailsViewBody(
      {super.key, required this.mostVisitedItemEntity});
  final MostVisitedItemEntity mostVisitedItemEntity;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              //1:Image
              Container(
      
      height: MediaQuery.sizeOf(context).height * .4,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(70)),
        image: DecorationImage(
          image: AssetImage(
            mostVisitedItemEntity.coverImage,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Text(
                mostVisitedItemEntity.name,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),
              ),
            ),

            const SizedBox(width: 24), // تعويض أيقونة أخرى لتوازن التصميم
          ],
        ),
      ),
    ),
              //2:SizedBox 16
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        //3:ScreenDetailsAction
        SliverToBoxAdapter(
          child: OverView(mostVisitedItemEntity: mostVisitedItemEntity),
        )
      ],
    );
  }
}
