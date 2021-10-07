import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trophy/Widgets/_citylistwidget.dart';
import 'package:trophy/Widgets/_listtooglebuttonwidget.dart';
import 'package:trophy/Widgets/_mapwidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: const [
          MapWidget(),
          Positioned(bottom: 0, child: CityListWidget())
        ]),
        floatingActionButton: const ListToogleButton(),
      ),
    );
  }
}
