class MuseumItemEntity {
  final String coverImage;
  final String name;
  final String location;
  final String closingTime;
  final String openingTime;
  final String description;
  final String foreignerPriceAdult;
  final String foreignerPriceStudent;
  final String egyptiansPriceAdult;
  final String egyptiansPriceStudent;
  final List<Map<String, String>> ourInsiderTips;
  final List<String> illustrativeImages;

  const MuseumItemEntity({
    required this.ourInsiderTips,
    required this.description,
    required this.illustrativeImages,
    required this.coverImage,
    required this.name,
    required this.location,
    required this.closingTime,
    required this.openingTime,
    required this.egyptiansPriceAdult,
    required this.egyptiansPriceStudent,
    required this.foreignerPriceAdult,
    required this.foreignerPriceStudent,
  });
}
