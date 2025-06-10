import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';

class MuseumItemModel extends MuseumItemEntity {
  const MuseumItemModel({
    required super.ourInsiderTips,
    required super.description,
    required super.illustrativeImages,
    required super.coverPicture,
    required super.name,
    required super.location,
    required super.closingTime,
    required super.openingTime,
    required super.egyptiansPriceAdult,
    required super.egyptiansPriceStudent,
    required super.foreignerPriceAdult,
    required super.foreignerPriceStudent,
    required super.egyptianArabsPrice,
    required super.foreignersPrice,
    required super.foreignerPriceChild,
    required super.tempC,
    required super.condition,
    required super.windKph,
    required super.humidity,
  });

  factory MuseumItemModel.fromJson(Map<String, dynamic> json) {
    final ticketPrices = json['ticket_prices'] ?? {};
    final weather = json['weather'] ?? {};

    return MuseumItemModel(
      ourInsiderTips: (json['ourInsiderTips'] as List<dynamic>?)
              ?.map((e) => Map<String, String>.from(e as Map))
              .toList() ??
          [],
      description: json['description'] ?? '',
      foreignerPriceChild: ticketPrices['foreign_child'] ?? '',
      illustrativeImages: List<String>.from(json['images'] ?? []),
      coverPicture: json['coverPicture'] ?? '',
      name: json['name'] ?? '',
      location: json['location'] ?? '',
      closingTime: json['closing_hours'] ?? '',
      openingTime: json['opening_hours'] ?? '',
      egyptiansPriceAdult: ticketPrices['egyptian_adult'] ?? '',
      egyptiansPriceStudent: ticketPrices['egyptian_student'] ?? '',
      foreignerPriceAdult: ticketPrices['foreign_adult'] ?? '',
      foreignerPriceStudent: ticketPrices['foreign_student'] ?? '',
      egyptianArabsPrice: ticketPrices['egyptian_arabs'] ?? '',
      foreignersPrice: ticketPrices['foreigners'] ?? '',

      // ✅ الطقس
      tempC: "${weather['temp_c'] ?? 0}",
    condition: weather['condition'] ?? '',
    windKph: "${weather['wind_kph'] ?? 0}",
    humidity: "${weather['humidity'] ?? 0}",
    );
  }
}


