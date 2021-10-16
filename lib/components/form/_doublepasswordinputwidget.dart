import 'package:flutter/material.dart';
import 'package:trophy/utilities/passwordvalidation.dart';

class DoublePasswordInputWidget extends StatefulWidget {
  final FormFieldSetter<String> onSaved;
  const DoublePasswordInputWidget({Key? key, required this.onSaved})
      : super(key: key);

  @override
  _DoublePasswordInputWidgetState createState() =>
      _DoublePasswordInputWidgetState();
}

class _DoublePasswordInputWidgetState extends State<DoublePasswordInputWidget> {
  String firstPasswordFieldValue = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            width: 300,
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Mot de passe',
              ),
              onChanged: (value) => firstPasswordFieldValue = value,
              validator: (String? value) {
                if (value != null && value.trim().isEmpty) {
                  return 'Le champ ne peut être vide';
                } else if (!PasswordValidation()
                    .validateStructure(value ?? '')) {
                  return PasswordValidation().validateStructureWording();
                }
              },
            )),
        Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            width: 300,
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Confirmer votre mot de passe',
              ),
              validator: (String? value) {
                if (value != null && value.trim().isEmpty) {
                  return 'Le champ ne peut être vide';
                } else if (value != firstPasswordFieldValue.trim()) {
                  return 'Les deux champs doivent être identiques';
                }
              },
              onSaved: widget.onSaved,
            ))
      ],
    );
  }
}
