class City {
  int id;
  String cityName;
  String imagePath;
  String? description;

  City(
      {required this.id,
      required this.cityName,
      required this.imagePath,
      this.description});
}
