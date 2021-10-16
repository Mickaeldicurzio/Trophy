import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:trophy/models/user.dart' as user_model;

class SubmitInputWidget extends StatelessWidget {
  final dynamic formKey;
  final user_model.User user;
  const SubmitInputWidget({Key? key, required this.formKey, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        child: ElevatedButton(
          onPressed: () {
            if (formKey.currentState.validate()) {
              try {
                // Process data.
                formKey.currentState.save();
                print(user.email);
                print(user.password);
                // await FirebaseAuth.instance
                //   .createUserWithEmailAndPassword(
                //     email: "barry.allen@example.com",
                //   password: "SuperSecretPassword!");
              } on FirebaseAuthException catch (e) {
                if (e.code == 'weak-password') {
                  print('The password provided is too weak.');
                } else if (e.code == 'email-already-in-use') {
                  print('The account already exists for that email.');
                }
              } catch (e) {
                print(e);
              }
            }
          },
          child: const Text('Validez'),
        ));
  }
}
