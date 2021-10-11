import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trophy/components/_loginherowidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [LoginHeroWidget()],
    );
  }
}
