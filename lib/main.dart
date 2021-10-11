import 'package:flutter/material.dart';
import 'package:trophy/screens/account/_registerpage.dart';
import 'package:trophy/utilities/colors.dart';
import 'package:trophy/screens/account/_loginpage.dart';
import 'package:trophy/screens/_homepage.dart';
import 'package:trophy/utilities/mixins.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Trophee';
  static const bool _isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.red),
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
            initialRoute: _isLoggedIn ? '/' : '/register',
            routes: {
              '/login': (context) => const Scaffold(body: LoginPage()),
              '/register': (context) => const Scaffold(body: RegisterPage()),
              '/': (context) => const Scaffold(body: HomePage()),
            }));
  }
}
