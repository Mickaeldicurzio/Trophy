import 'package:flutter/material.dart';
import 'package:trophy/utilities/passwordvalidation.dart';

class PasswordInputWidget extends StatefulWidget {
  final FormFieldSetter<String> onSaved;
  const PasswordInputWidget({Key? key, required this.onSaved})
      : super(key: key);

  @override
  _PasswordInputWidgetState createState() => _PasswordInputWidgetState();
}

class _PasswordInputWidgetState extends State<PasswordInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            onSaved: widget.onSaved));
  }
}
