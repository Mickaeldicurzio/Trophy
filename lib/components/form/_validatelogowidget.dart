import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trophy/utilities/colors.dart';

class ValidateLogoWidget extends StatelessWidget {
  final bool isValid;
  const ValidateLogoWidget({Key? key, required this.isValid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Visibility(
        child: IconButton(
          icon: Icon(
            Icons.check_circle,
            color: AppColors.validate,
            size: 20,
          ),
          onPressed: () {},
        ),
        visible: isValid ? true : false,
      ),
      Visibility(
        child: IconButton(
          icon: Icon(
            Icons.error_rounded,
            color: AppColors.error,
            size: 20,
          ),
          onPressed: () {},
        ),
        visible: !isValid ? true : false,
      ),
    ]);
  }
}
