import 'package:flutter/material.dart';
import 'package:trophy/Widgets/_citycardwidget.dart';

class CityListWidget extends StatelessWidget {
  const CityListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: (Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CityCardWidget(),
          CityCardWidget(),
          CityCardWidget(),
          CityCardWidget()
        ],
      )),
    );
  }
}
