import 'package:flutter/material.dart';
import 'package:trophy/Classes/city.dart';
import 'package:trophy/Pages/_citypage.dart';

class CityCardWidget extends StatelessWidget {
  CityCardWidget({Key? key}) : super(key: key);

  final city =
      City(id: 1, cityName: "Montpellier", imagePath: 'montpellier.jpg');

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CityPage(
                      city: city,
                    )),
          );
        },
        child: Container(
          width: 300,
          height: 200,
          margin: const EdgeInsets.only(right: 20.0),
          child: (Image.asset(city.imagePath)),
        ));
  }
}
