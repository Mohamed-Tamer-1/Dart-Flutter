import 'package:flutter/material.dart';
import 'package:store_app/models/constants.dart';
import 'package:store_app/widgets/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: const HomeBody(), // Use a different widget for the body
    );
  }
}

AppBar homeAppBar() {
  return AppBar(
    backgroundColor: kPrimaryColor,
    elevation: 0,
    title: const Text(
      'Store',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    ),
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.menu,
        color: Colors.white,
        size: 30,
      ),
    ),
  );
}
