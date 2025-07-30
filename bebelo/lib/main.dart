import 'package:bebelo/pages/login_page.dart';
import 'package:bebelo/pages/home_page.dart';
import 'package:bebelo/pages/product_detail.dart';
import 'package:bebelo/pages/register_page.dart';
import 'package:bebelo/pages/register_pages/register_number.dart';
import 'package:bebelo/pages/register_pages/terms_conditions.dart';
import 'package:bebelo/pages/register_pages/verification_code.dart';
import 'package:bebelo/pages/shopping_cart.dart';
import 'package:bebelo/pages/test_page.dart';
import 'package:bebelo/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/register_number': (context) => const RegisterNumber(),
        '/verification_code': (context) => const VerificationCode(),
        '/terms_conditions': (context) => const TermsConditions(),
        '/home': (context) => const HomePage(),
        '/welcome': (context) => const WelcomePage(),
        '/shopping_cart': (context) => ShoppingCart(),
        '/product_detail': (context) => ProductDetail(),
        '/test': (context) => const TestPage()
      }
    );
  }
}