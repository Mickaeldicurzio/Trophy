import 'package:flutter/cupertino.dart';

class City {
  int id;
  String cityName;
  String imagePath;
  Text? description;

  City(
      {required this.id,
      required this.cityName,
      required this.imagePath,
      this.description});
}
