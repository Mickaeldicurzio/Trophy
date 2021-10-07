import 'package:flutter/material.dart';

class CityCardWidget extends StatelessWidget {
  const CityCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      margin: const EdgeInsets.only(right: 20.0),
      child: (Image.asset('montpellier.jpg')),
    );
  }
}
