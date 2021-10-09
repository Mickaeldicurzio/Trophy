import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trophy/components/_herowidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [HeroWidget()],
      ),
    );
  }
}
