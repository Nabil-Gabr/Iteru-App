import 'package:flutter/material.dart';
import 'package:iteru_app/modules/home/domain/entites/tourism_type_item_entity.dart';

class TourismTypeListViewItem extends StatelessWidget {
  final TourismTypeItemEntity tourismTypeEntity;
  const TourismTypeListViewItem({
    super.key,
    required this.tourismTypeEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
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
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color(0xffF6F1E9).withOpacity(0.5),
              
            ),
            child: Text(
              tourismTypeEntity.title,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
