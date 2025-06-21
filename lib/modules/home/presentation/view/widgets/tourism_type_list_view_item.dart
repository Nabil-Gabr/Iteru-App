import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';
import 'package:iteru_app/modules/home/domain/entites/monument_item_entity.dart';
import 'package:iteru_app/modules/tourism_tybpes/presentation/views/monument_details_view.dart';

class MonumentsListViewItem extends StatelessWidget {
  final MonumentEntity monumentEntity;

  const MonumentsListViewItem({
    super.key,
    required this.monumentEntity,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          MonumentDetailsView.routeName,
          arguments: monumentEntity,
        );
      },
      child: AspectRatio( // ✅ نحدد الارتفاع بشكل واضح
        aspectRatio: 3 / 2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            fit: StackFit.expand, // ✅ نضمن إن Stack تملأ المساحة كلها
            children: [
              // Background Image
              CachedNetworkImage(
                imageUrl: monumentEntity.coverPicture,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) =>
                    const Center(child: Icon(Icons.error)),
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
              ),

              // Overlay and Text
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(4.0),
                  color: Colors.black.withOpacity(0.3),
                  child: Text(
                    monumentEntity.name,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.medium20(context).copyWith(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


