import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";

class SubmitInputWidget extends StatelessWidget {
  final dynamic formKey;
  const SubmitInputWidget({Key? key, required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        child: ElevatedButton(
          onPressed: () async {
            try {
              UserCredential userCredential = await FirebaseAuth.instance
                  .createUserWithEmailAndPassword(
                      email: "barry.allen@example.com",
                      password: "SuperSecretPassword!");
            } on FirebaseAuthException catch (e) {
              if (e.code == 'weak-password') {
                print('The password provided is too weak.');
              } else if (e.code == 'email-already-in-use') {
                print('The account already exists for that email.');
              }
            } catch (e) {
              print(e);
            }
          },
          child: const Text('Validez'),
        ));
  }
}
