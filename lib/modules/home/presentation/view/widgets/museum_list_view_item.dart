import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';
import 'package:iteru_app/modules/museum/presentation/view/museum_details_view.dart';

class MuseumListViewItem extends StatelessWidget {
  const MuseumListViewItem({
    super.key,
    required this.museumItemEntity,
  });
  final MuseumItemEntity museumItemEntity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(MuseumDetailsView.routeName,
            arguments: museumItemEntity);
      },
      child: AspectRatio(
        aspectRatio: 265 / 84,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          decoration: const BoxDecoration(
            color: Color(0xffF6F1E9),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Row(
            children: [
              Expanded(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        museumItemEntity.image,
                        fit: BoxFit.cover,
                      ))),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        museumItemEntity.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                //1
                                SvgPicture.asset(Assets.imagesIconLocation),
                                const SizedBox(
                                  width: 4,
                                ),
                                //2
                                Text(
                                  museumItemEntity.location,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            //3
                            const SizedBox(
                              width: 4,
                            ),
                            //4
                            Text(
                              "\$${museumItemEntity.price}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
