import 'package:flutter/material.dart';
import 'package:trophy/Classes/city.dart';

class CityPage extends StatelessWidget {
  final City city;
  const CityPage({Key? key, required this.city})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Text(city.cityName)));
  }
}
