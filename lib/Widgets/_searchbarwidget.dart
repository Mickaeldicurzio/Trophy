import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget with PreferredSizeWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          CupertinoIcons.search,
          color: Colors.black45,
        ),
      ),
      title: const TextField(
        decoration: InputDecoration(
          hintText: 'Recherche...',
          hintStyle: TextStyle(
            color: Colors.black45,
            fontSize: 18,
            fontStyle: FontStyle.italic,
          ),
          border: InputBorder.none,
        ),
        style: TextStyle(
          color: Colors.black54,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
