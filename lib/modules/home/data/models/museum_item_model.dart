import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';

class MuseumItemModel extends MuseumItemEntity {
  const MuseumItemModel({
    required super.ourInsiderTips,
    required super.description,
    required super.illustrativeImages,
    required super.coverImage,
    required super.name,
    required super.location,
    required super.closingTime,
    required super.openingTime,
    required super.egyptiansPriceAdult,
    required super.egyptiansPriceStudent,
    required super.foreignerPriceAdult,
    required super.foreignerPriceStudent,
  });
  factory MuseumItemModel.fromJson(Map<String, dynamic> json) {
    return MuseumItemModel(
      // تحويل قائمة البيانات الخاصة بـ 'ourInsiderTips' إلى قائمة من الخرائط (Map<String, String>)
      ourInsiderTips: (json['ourInsiderTips'] as List<dynamic>)
          .map((e) => Map<String, String>.from(e as Map))
          .toList(),
      description: json['description'] ?? '',
      // تحويل قائمة الصور التوضيحية إلى قائمة من سلاسل نصية
      illustrativeImages: List<String>.from(json['illustrativeImages'] ?? []),
      coverImage: json['coverImage'] ?? '',
      name: json['name'] ?? '',
      location: json['location'] ?? '',
      closingTime: json['closingTime'] ?? '',
      openingTime: json['openingTime'] ?? '',
      egyptiansPriceAdult: json['egyptiansPriceAdult'] ?? '',
      egyptiansPriceStudent: json['egyptiansPriceStudent'] ?? '',
      foreignerPriceAdult: json['foreignerPriceAdult'] ?? '',
      foreignerPriceStudent: json['foreignerPriceStudent'] ?? '',
    );
  }
}
