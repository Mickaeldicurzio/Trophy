import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trophy/utilities/colors.dart';
import 'package:trophy/utilities/mixins.dart';
import 'package:trophy/widgets/form/_registerformwidget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: <Widget>[
          const Text(
            'Créer votre Compte',
            style: TextStyle(fontSize: 18.0),
          ),
          Mixins.devider,
          const RegisterFormWidget(),
        ],
      ),
    ));
  }
}
