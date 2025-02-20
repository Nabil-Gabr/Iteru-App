import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';
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
    // 🔹 تحديد اللون بناءً على الثيم الحالي
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color containerColor =
        isDarkMode ? const Color(0xff252836) : const Color(0xffF6F1E9);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(MuseumDetailsView.routeName,
            arguments: museumItemEntity);
      },
      child: AspectRatio(
        aspectRatio: 265 / 84,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          decoration: BoxDecoration(
            color: containerColor, // 🔹 تغيير اللون بناءً على الثيم,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Row(
            children: [
              Expanded(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        imageUrl: museumItemEntity.coverPicture,
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
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
                        museumItemEntity.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.medium20(context),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
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
                                  style: AppTextStyles.regular18(context)
                                      .copyWith(color: const Color(0xffFF8400)),
                                ),
                              ],
                            ),
                            //3
                            const SizedBox(
                              width: 4,
                            ),
                            //4
                            // Text(
                            //   "\$${museumItemEntity.foreignerPriceAdult}",
                            //   maxLines: 1,
                            //   overflow: TextOverflow.ellipsis,
                            //   style: const TextStyle(
                            //       fontSize: 14, fontWeight: FontWeight.w400),
                            // )
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
