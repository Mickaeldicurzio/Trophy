import 'package:flutter/material.dart';
import 'package:trophy/components/form/_doublepasswordinputwidget.dart';
import 'package:trophy/components/form/_emailinputwidget.dart';
import 'package:trophy/components/form/_submitinputwidget.dart';
import 'package:trophy/models/user.dart';

class RegisterFormWidget extends StatefulWidget {
  const RegisterFormWidget({Key? key}) : super(key: key);

  @override
  _RegisterFormWidgetState createState() => _RegisterFormWidgetState();
}

class _RegisterFormWidgetState extends State<RegisterFormWidget> {
  final _formKey = GlobalKey<FormState>();
  final User user = User();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              EmailInputWidget(onSaved: (value) => user.email = value),
              DoublePasswordInputWidget(
                  onSaved: (value) => user.password = value),
              SubmitInputWidget(formKey: _formKey, user: user),
            ],
          )),
    );
  }
}
