import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trophy/screens/account/_registerpage.dart';
import 'package:trophy/utilities/colors.dart';
import 'package:trophy/screens/account/_loginpage.dart';
import 'package:trophy/screens/_homepage.dart';
import 'package:trophy/utilities/mixins.dart';

class Trophy extends StatelessWidget {
  const Trophy({Key? key}) : super(key: key);

  static const String _title = 'Trophee';
  static const bool _isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialApp(
            title: _title,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              // Define the default brightness and colors.
              brightness: Brightness.dark,
              primaryColor: AppColors.white,
              scaffoldBackgroundColor: AppColors.primary,
              inputDecorationTheme: Mixins.inputField,
              fontFamily: 'Lato',
              textTheme: Mixins.textTheme,
            ),
            initialRoute: _isLoggedIn ? '/' : '/login',
            routes: {
          '/login': (context) => const Scaffold(body: LoginPage()),
          '/register': (context) => const Scaffold(body: RegisterPage()),
          '/': (context) => const Scaffold(body: HomePage()),
        }));
  }
}
