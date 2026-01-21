import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/services_screen.dart';
import 'screens/about_screen.dart';
import 'screens/contact_screen.dart';

void main() {
  runApp(const BusinessApp());
}

class BusinessApp extends StatelessWidget {
  const BusinessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UK Business Services',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00247D), // British Royal Blue-ish
          primary: const Color(0xFF00247D),
          secondary: const Color(0xFFCF142B), // Red accent
        ),
        useMaterial3: true,
        fontFamily: 'Roboto', // Standard clean font
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/services': (context) => const ServicesScreen(),
        '/about': (context) => const AboutScreen(),
        '/contact': (context) => const ContactScreen(),
      },
    );
  }
}
