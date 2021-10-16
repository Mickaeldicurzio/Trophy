import 'package:flutter/material.dart';
import 'package:trophy/components/form/_emailinputwidget.dart';
import 'package:trophy/components/form/_passwordinputwidget.dart';
import 'package:trophy/components/form/_submitinputwidget.dart';
import 'package:trophy/models/user.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final User user = User();
    return Column(
      children: [
        const Text(
          'Connectez vous',
          style: TextStyle(fontSize: 18.0),
        ),
        Form(
            key: _formKey,
            child: Column(
              children: [
                EmailInputWidget(onSaved: (value) => user.email = value),
                PasswordInputWidget(onSaved: (value) => user.password = value),
                SubmitInputWidget(formKey: _formKey, user: user),
              ],
            ))
      ],
    );
  }
}
