import 'package:flutter/material.dart';

class ImageCardWidget extends StatelessWidget {
  const ImageCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: (Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('hero.jpg'),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
