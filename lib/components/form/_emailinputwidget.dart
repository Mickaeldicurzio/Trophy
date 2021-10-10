import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:trophy/components/form/_validatelogowidget.dart';
import 'package:trophy/utilities/colors.dart';

Color colorState = AppColors.white;
bool _isValid = false;
bool _hasChanged = false;

class EmailInputWidget extends StatefulWidget {
  const EmailInputWidget({Key? key}) : super(key: key);

  @override
  _EmailInputWidgetState createState() => _EmailInputWidgetState();
}

class _EmailInputWidgetState extends State<EmailInputWidget> {
  @override
  Widget build(BuildContext context) {
    void _setEmailValidity(validity) {
      setState(() {
        _isValid = validity;
        colorState = (validity ? AppColors.validate : AppColors.white);
      });
    }

    void _setEmailError(validity) {
      setState(() {
        _isValid = validity;
        _hasChanged = true;
        colorState = (validity ? AppColors.validate : AppColors.error);
      });
    }

    void _resetEmailStatus() {
      setState(() {
        _hasChanged = false;
        colorState = AppColors.white;
      });
    }

    return Stack(alignment: Alignment.center, children: [
      Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
        width: 300,
        child: TextFormField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(left: 20, right: 40),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colorState, width: 2)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colorState, width: 2)),
              labelText: 'Adresse Email',
              labelStyle: TextStyle(color: AppColors.white)),
          onChanged: (value) =>
              {_setEmailValidity((EmailValidator.validate(value)))},
          onFieldSubmitted: (value) =>
              {_setEmailError((EmailValidator.validate(value)))},
          onTap: () => {_resetEmailStatus()},
        ),
      ),
      Visibility(
        child: Positioned(
            right: 20,
            top: 25,
            child: ValidateLogoWidget(
              isValid: _isValid,
              hasChange: _hasChanged,
            )),
        visible: _hasChanged ? true : false,
      ),
    ]);
  }
}
