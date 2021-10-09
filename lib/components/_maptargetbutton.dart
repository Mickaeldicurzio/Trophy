import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MapTargetButton extends StatefulWidget {
  const MapTargetButton({Key? key}) : super(key: key);

  @override
  _ListToogleButtonState createState() => _ListToogleButtonState();
}

class _ListToogleButtonState extends State<MapTargetButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          CupertinoIcons.map_pin_ellipse,
          color: Colors.white,
        ),
      ),
    );
  }
}
