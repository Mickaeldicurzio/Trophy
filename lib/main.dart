import 'package:flutter/material.dart';
import 'package:trophy/utilities/colors.dart';
import 'package:trophy/screens/account/_loginpage.dart';
import 'package:trophy/screens/_homepage.dart';

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
              inputDecorationTheme: InputDecorationTheme(
                  focusColor: AppColors.white,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.white, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.white, width: 2)),
                  labelStyle: TextStyle(color: AppColors.white)),
              fontFamily: 'Lato-Italic',
              textTheme: const TextTheme(
                headline1: TextStyle(
                    fontSize: 72.0,
                    fontFamily: 'Lato-Bold',
                    fontWeight: FontWeight.bold),
                headline6: TextStyle(
                    fontSize: 36.0,
                    fontFamily: 'Lato-BoldItalic',
                    fontStyle: FontStyle.italic),
                bodyText2: TextStyle(fontSize: 22.0, fontFamily: 'Lato'),
              ),
            ),
            initialRoute: _isLoggedIn ? '/' : '/login',
            routes: {
              '/login': (context) => const Scaffold(body: LoginPage()),
              '/': (context) => const Scaffold(body: HomePage()),
            }));
  }
}
