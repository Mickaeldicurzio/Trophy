import 'package:flutter/material.dart';

class CityPage extends StatelessWidget {
  final String cityName;
  const CityPage({Key? key, required this.cityName})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Text(cityName)));
  }
}
