class HotelEntity {
  final String name;
  final String address;
  final String city;
  final String state;
  final int starCount;
  final int ratingCount;
  final String url;
  final String email;
  final String phone;
  final double lat;
  final double lng;

  const HotelEntity({
    required this.name,
    required this.address,
    required this.city,
    required this.state,
    required this.starCount,
    required this.ratingCount,
    required this.url,
    required this.email,
    required this.phone,
    required this.lat,
    required this.lng,
  });
}
