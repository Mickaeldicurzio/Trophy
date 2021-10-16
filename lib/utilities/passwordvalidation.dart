import 'package:flutter/material.dart';

class PasswordValidation {
  bool validateStructure(String value) {
    String pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  String validateStructureWording() {
    return '''
    Mauvais format pour le mot de passe : 
      - Il dois contenir minimum une majuscule
      - Il dois contenir minimum une minuscule
      - Il dois contenir minimum un nombre
      - Il dois faire au moins 8 caractères
    ''';
  }
}
