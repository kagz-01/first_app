import 'package:first_app/Pages/home_page.dart';
import 'package:first_app/Pages/login_page.dart';
import 'package:first_app/Pages/main_page.dart';
import 'package:first_app/Pages/profile_page.dart';
import 'package:first_app/styles/app_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: Appcolors.background,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => const MainPage(),
        '/profile' : (context) => const ProfilePage(),
      },
    );
  }
}
