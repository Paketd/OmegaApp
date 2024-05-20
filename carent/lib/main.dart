import 'package:carent/HomePage.dart';
import 'package:flutter/material.dart';
import 'LoginPage.dart';

void main() {
  runApp(const CaRentApp());
}

class CaRentApp extends StatelessWidget {
  const CaRentApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CaRent',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(250, 250, 250, 1),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(44, 182, 125, 1)),
        useMaterial3: true,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromRGBO(44, 182, 125, 1),
          selectedItemColor: Color.fromRGBO(33, 33, 33, 1),
          unselectedItemColor: Color.fromRGBO(250, 250, 250, 1),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.black,
            fontFamily: "Baloo",
            fontSize: 20,
          ),
            bodySmall: TextStyle(
              color: Color.fromRGBO(22, 22, 26, 1),
              fontFamily: "Baloo",
              fontSize: 14,
            ),
            displayLarge: TextStyle(
              color: Color.fromRGBO(22, 22, 26, 1),
              fontFamily: "Baloo",
              fontSize: 60,
              fontWeight: FontWeight.w900,
              letterSpacing: 3.0,
            )
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(title: "CaRent"),
        "/homepage": (context) => const HomePage(title: "CaRent"),
      },
    );
  }
}

