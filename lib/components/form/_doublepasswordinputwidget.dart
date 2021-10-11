import 'package:flutter/material.dart';

class DoublePasswordInputWidget extends StatefulWidget {
  const DoublePasswordInputWidget({Key? key}) : super(key: key);

  @override
  _DoublePasswordInputWidgetState createState() =>
      _DoublePasswordInputWidgetState();
}

class _DoublePasswordInputWidgetState extends State<DoublePasswordInputWidget> {
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
              validator: (String? value) {
                if (value != null && value.trim().isEmpty) {
                  return 'Le champ ne peut être vide';
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
                }
              },
            ))
      ],
    );
  }
}
