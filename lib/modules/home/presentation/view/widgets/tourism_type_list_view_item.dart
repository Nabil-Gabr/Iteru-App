import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';
import 'package:iteru_app/modules/home/domain/entites/tourism_type_item_entity.dart';
import 'package:iteru_app/modules/tourism_tybpes/presentation/views/tourism_types_details_view.dart';

class TourismTypeListViewItem extends StatelessWidget {
  final TourismTypeItemEntity tourismTypeEntity;
  const TourismTypeListViewItem({
    super.key,
    required this.tourismTypeEntity,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(TourismTypesDetailsView.routeName,
            arguments: tourismTypeEntity);
      },
      child: Container(
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(tourismTypeEntity.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color:  Colors.white.withOpacity(.7),
                
              ),
              child: Text(
                tourismTypeEntity.title,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.medium20(context),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
