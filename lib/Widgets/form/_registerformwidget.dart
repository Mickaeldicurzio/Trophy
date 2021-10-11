import 'package:flutter/material.dart';
import 'package:trophy/components/form/_emailinputwidget.dart';
import 'package:trophy/components/form/_passwordinputwidget.dart';
import 'package:trophy/components/form/_submitinputwidget.dart';

class RegisterFormWidget extends StatefulWidget {
  const RegisterFormWidget({Key? key}) : super(key: key);

  @override
  _RegisterFormWidgetState createState() => _RegisterFormWidgetState();
}

class _RegisterFormWidgetState extends State<RegisterFormWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
            key: _formKey,
            child: Column(
              children: [
                const EmailInputWidget(),
                const PasswordInputWidget(),
                SubmitInputWidget(formKey: _formKey),
              ],
            ))
      ],
    );
  }
}
