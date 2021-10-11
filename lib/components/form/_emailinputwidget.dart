import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:trophy/components/form/_validatelogowidget.dart';
import 'package:trophy/utilities/colors.dart';

class EmailInputWidget extends StatefulWidget {
  const EmailInputWidget({Key? key}) : super(key: key);

  @override
  _EmailInputWidgetState createState() => _EmailInputWidgetState();
}

const bool _isValid = false;

class _EmailInputWidgetState extends State<EmailInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
        width: 300,
        child: TextFormField(
          decoration: const InputDecoration(
            labelText: 'Adresse Email',
          ),
          validator: (String? value) {
            return (value != null && !EmailValidator.validate(value))
                ? 'Veuillez entrez un email au bon format'
                : null;
          },
        ),
      ),
      const Visibility(
        child: Positioned(
            right: 20,
            top: 25,
            child: ValidateLogoWidget(
              isValid: _isValid,
            )),
        visible: _isValid ? true : false,
      ),
    ]);
  }
}
