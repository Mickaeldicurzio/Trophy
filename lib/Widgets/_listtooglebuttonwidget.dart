import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        onPressed: () {},
        icon: const Icon(
          CupertinoIcons.list_dash,
          color: Colors.white,
        ),
      ),
    );
  }
}
