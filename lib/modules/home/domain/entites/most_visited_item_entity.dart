class MostVisitedItemEntity {
  final String coverImage;
  final String name;
  final String location;
  final String description;
  final String? closingTime;
  final String? openingTime;

  final String? foreignerPriceAdult;
  final String? foreignerPriceStudent;
  final String? egyptiansPriceAdult;
  final String? egyptiansPriceStudent;

  const MostVisitedItemEntity(
      {required this.coverImage,
      required this.name,
      required this.location,
      required this.description,
      required this.closingTime,
      required this.openingTime,
      required this.foreignerPriceAdult,
      required this.foreignerPriceStudent,
      required this.egyptiansPriceAdult,
      required this.egyptiansPriceStudent});
}
