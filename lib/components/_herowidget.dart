import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: <Widget>[
      Container(
        height: 250,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/hero.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
          child: Container(
        decoration: const BoxDecoration(color: Colors.black26),
        padding: const EdgeInsets.fromLTRB(145, 75, 145, 75),
        child: const Text(
          "TRÖPHY",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontFamily: "Roboto",
            fontStyle: FontStyle.normal,
            fontSize: 48.0,
          ),
          textAlign: TextAlign.center,
        ),
      ))
    ]);
  }
}
