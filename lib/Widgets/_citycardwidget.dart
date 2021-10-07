import 'package:flutter/cupertino.dart';
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
          margin: const EdgeInsets.only(right: 20.0),
          child: (Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(city.imagePath),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: const Icon(
                            CupertinoIcons.heart,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: Text(
                    city.cityName,
                    style: const TextStyle(fontSize: 20),
                  ),
                  subtitle: city.description != null
                      ? Text(city.description ?? '')
                      : null,
                ),
              ],
            ),
          )),
        ));
  }
}
