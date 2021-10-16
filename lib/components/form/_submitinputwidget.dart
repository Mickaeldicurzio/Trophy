import "package:flutter/material.dart";
import 'package:trophy/models/user.dart' as user_model;
import 'package:trophy/utilities/authhelper.dart';

class SubmitInputWidget extends StatelessWidget {
  final dynamic formKey;
  final user_model.User user;
  final bool isLogIn;
  const SubmitInputWidget(
      {Key? key,
      required this.formKey,
      required this.user,
      this.isLogIn = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        child: ElevatedButton(
          onPressed: () {
            if (formKey.currentState.validate()) {
              // Process data.
              formKey.currentState.save();
              isLogIn
                  ? AuthenticationHelper()
                      .signIn(
                          email: user.email ?? '',
                          password: user.password ?? '')
                      .then((value) => AuthenticationHelper()
                          .loginRedirectAction(value, context))
                  : AuthenticationHelper()
                      .signUp(
                          email: user.email ?? '',
                          password: user.password ?? '')
                      .then((value) => AuthenticationHelper()
                          .loginRedirectAction(value, context));
            }
          },
          child: const Text('Validez'),
        ));
  }
}
