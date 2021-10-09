import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trophy/utilities/colors.dart';
import 'package:trophy/components/_loginherowidget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: const [
          LoginHeroWidget(),
        ],
      ),
    );
  }
}
