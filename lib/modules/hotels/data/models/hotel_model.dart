import 'package:iteru_app/modules/hotels/domain/entity/hotel_entity.dart';

class HotelModel extends HotelEntity {
  const HotelModel({
    required super.name,
    required super.address,
    required super.city,
    required super.state,
    required super.starCount,
    required super.ratingCount,
    required super.url,
    required super.email,
    required super.phone,
    required super.lat,
    required super.lng,
  });

  factory HotelModel.fromJson(Map<String, dynamic> json) {
    return HotelModel(
      name: json['name'] ?? '',
      address: json['address'] ?? '',
      city: json['city'] ?? '',
      state: json['state'] ?? '',
      starCount: json['star_count'] ?? 0,
      ratingCount: json['rating_count'] ?? 0,
      url: json['url'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      lng: (json['lng'] as num?)?.toDouble() ?? 0.0,
    );
  }
}
