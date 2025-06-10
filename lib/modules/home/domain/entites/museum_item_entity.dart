class MuseumItemEntity {
  final String foreignerPriceChild;
  final String coverPicture;
  final String name;
  final String location;
  final String closingTime;
  final String openingTime;
  final String description;
  final String foreignerPriceAdult;
  final String foreignerPriceStudent;
  final String egyptiansPriceAdult;
  final String egyptiansPriceStudent;
  final String egyptianArabsPrice;
  final String foreignersPrice;
  final List<Map<String, String>> ourInsiderTips;
  final List<String> illustrativeImages;

  // ✅ معلومات الطقس الجديدة
  final String tempC;
  final String condition;
  final String windKph;
  final String humidity;

  const MuseumItemEntity({
    required this.foreignerPriceChild,
    required this.ourInsiderTips,
    required this.description,
    required this.illustrativeImages,
    required this.coverPicture,
    required this.name,
    required this.location,
    required this.closingTime,
    required this.openingTime,
    required this.egyptiansPriceAdult,
    required this.egyptiansPriceStudent,
    required this.foreignerPriceAdult,
    required this.foreignerPriceStudent,
    required this.egyptianArabsPrice,
    required this.foreignersPrice,
    required this.tempC,
    required this.condition,
    required this.windKph,
    required this.humidity,
  });
}


