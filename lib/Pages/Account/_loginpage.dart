import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trophy/Classes/colors.dart';
import 'package:trophy/Component/_herowidget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: const [HeroWidget()],
      ),
    );
  }
}
