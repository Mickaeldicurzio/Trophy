import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trophy/utilities/colors.dart';
import 'package:trophy/components/_loginherowidget.dart';
import 'package:trophy/widgets/form/_loginformwidget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Stack(
            children: [
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
        ],
      ),
    );
  }
}
