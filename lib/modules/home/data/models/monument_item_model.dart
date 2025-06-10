import 'package:iteru_app/modules/home/domain/entites/monument_item_entity.dart';

class MonumentModel extends MonumentEntity {
  MonumentModel({
    required super.id,
    required super.name,
    required super.location,
    required super.description,
    required super.images,
    required super.coverPicture,
    required super.weather,
    required super.tickets,
  });

  factory MonumentModel.fromJson(Map<String, dynamic> json) {
    return MonumentModel(
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      location: json['location'] ?? '',
      description: json['description'] ?? '',
      images: List<String>.from(json['images'] ?? []),
      coverPicture: json['coverPicture'] ?? '',
      weather: Weather.fromJson(json['weather'] ?? {}),
      tickets: Tickets.fromJson(json['ticket_prices']),
    );
  }
}
