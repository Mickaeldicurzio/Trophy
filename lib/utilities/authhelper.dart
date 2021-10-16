import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trophy/screens/_homepage.dart';

class AuthenticationHelper {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  get user => _auth.currentUser;

  //SIGN UP METHOD
  Future signUp({required String email, required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return "Password is to weak";
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      } else {
        return e.message;
      }
    }
  }

  //SIGN IN METHOD
  Future signIn({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //SIGN OUT METHOD
  Future signOut() async {
    await _auth.signOut().then((value) => null);
  }

  loginRedirectAction(result, context) {
    return result != null
        ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              result,
              style: const TextStyle(fontSize: 16),
            ),
          ))
        : Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ));
  }
}
