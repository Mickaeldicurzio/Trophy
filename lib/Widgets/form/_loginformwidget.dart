import 'package:flutter/material.dart';
import 'package:trophy/components/form/_emailinputwidget.dart';
import 'package:trophy/components/form/_passwordinputwidget.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Connectez vous'),
        Form(
            child: Column(
          children: const [EmailInputWidget(), PasswordInputWidget()],
        ))
      ],
    );
  }
}
