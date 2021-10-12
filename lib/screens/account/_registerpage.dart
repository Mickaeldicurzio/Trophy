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
        body: Stack(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 100),
            decoration: BoxDecoration(color: AppColors.primary),
            child: Form(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: const Text(
                      'Créer votre Compte',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const RegisterFormWidget(),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 10),
                    child: Mixins.devider,
                  )
                ],
              ),
            )),
        Positioned(
          top: 60,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              CupertinoIcons.arrow_left,
              color: Colors.white,
            ),
          ),
        )
      ],
    ));
  }
}
