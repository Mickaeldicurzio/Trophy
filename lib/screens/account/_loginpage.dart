import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trophy/utilities/colors.dart';
import 'package:trophy/components/_loginherowidget.dart';
import 'package:trophy/utilities/mixins.dart';
import 'package:trophy/widgets/form/_loginformwidget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              const LoginHeroWidget(),
              Positioned(
                  bottom: -1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(100),
                            topLeft: Radius.circular(100))),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                  )),
            ],
          ),
          const LoginFormWidget(),
          Mixins.devider,
          const Text('Vous n\'avez pas encore de compte ?'),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: TextButton(
              style: TextButton.styleFrom(padding: const EdgeInsets.all(16.0)),
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('S\'enregister',
                      style: TextStyle(color: AppColors.white, fontSize: 18)),
                  const Icon(CupertinoIcons.arrow_right),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
