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
            theme: ThemeData(scaffoldBackgroundColor: AppColors.primary),
            initialRoute: _isLoggedIn ? '/' : '/login',
            routes: {
              '/login': (context) => const Scaffold(body: LoginPage()),
              '/': (context) => const Scaffold(body: HomePage()),
            }));
  }
}
