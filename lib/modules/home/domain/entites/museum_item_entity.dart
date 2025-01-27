class MuseumItemEntity {
  final String coverImage;
  final String title;
  final String location;
  final String price;
  final String overViewText;
  final List<String> illustrativeImages;

  const MuseumItemEntity(
      {required this.overViewText,
      required this.illustrativeImages,
      required this.coverImage,
      required this.title,
      required this.location,
      required this.price});
}
