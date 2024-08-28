import 'package:flutter/material.dart';
import 'package:store_app/models/constants.dart';
import 'package:store_app/pages/home_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Online Store",
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        colorScheme: ThemeData().colorScheme.copyWith(secondary: kPrimaryColor),
      ),
      home: const HomePage(),
    );
  }
}