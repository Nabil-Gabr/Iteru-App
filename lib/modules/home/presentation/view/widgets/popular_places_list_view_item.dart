import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/home/domain/entites/popular_places_item_entity.dart';
import 'package:iteru_app/modules/popular_places/presentation/view/popular_places_details_view.dart';

class PopularPlacesListViewItem extends StatelessWidget {
  const PopularPlacesListViewItem({
    super.key,
    required this.popularPlacesItemEntity,
  });
  final PopularPlacesItemEntity popularPlacesItemEntity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(PopularPlacesDetailsView.routeName,
            arguments: popularPlacesItemEntity);
      },
      child: AspectRatio(
        aspectRatio: 265 / 212,
        child: Container(
          alignment: Alignment.bottomCenter,
          // margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(popularPlacesItemEntity.image),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Container(
              height: 76,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.7),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            popularPlacesItemEntity.title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SvgPicture.asset(Assets.imagesIconStar),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              popularPlacesItemEntity.rating,
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        )),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(Assets.imagesIconLocation),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          popularPlacesItemEntity.location,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
