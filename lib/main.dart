import 'package:custom_navigation_app/introPage.dart';
import 'package:custom_navigation_app/productDetailsPage.dart';
import 'package:custom_navigation_app/productPage.dart';
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
      title: 'Flutter Demo',

      initialRoute: '/',
      routes: {
        '/': (context) => IntroPage(),
        '/allProduct':(context) => ProductPage()
      },
    );
  }
}
