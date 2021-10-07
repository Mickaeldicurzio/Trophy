import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trophy/Pages/_citypage.dart';

class ListToogleButton extends StatefulWidget {
  const ListToogleButton({Key? key}) : super(key: key);

  @override
  _ListToogleButtonState createState() => _ListToogleButtonState();
}

class _ListToogleButtonState extends State<ListToogleButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CityPage()),
          );
        },
        icon: const Icon(
          CupertinoIcons.list_dash,
          color: Colors.white,
        ),
      ),
    );
  }
}
