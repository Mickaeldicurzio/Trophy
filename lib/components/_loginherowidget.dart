import 'package:flutter/material.dart';
import 'package:trophy/utilities/colors.dart';

class LoginHeroWidget extends StatelessWidget {
  const LoginHeroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: <Widget>[
      Container(
        height: 350,
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
          top: 40,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black26,
                border: Border.all(color: AppColors.white, width: 5)),
            padding: const EdgeInsets.fromLTRB(125, 75, 125, 75),
            child: const Text(
              "TRÖPHY",
              style: TextStyle(fontSize: 48.0),
              textAlign: TextAlign.center,
            ),
          ))
    ]);
  }
}
