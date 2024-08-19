import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/welcome.dart';
import 'package:flutter_application_1/Pages/log_in.dart';
import 'package:flutter_application_1/Pages/sign_up.dart';
import 'package:flutter_application_1/Pages/sign_up_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        title: "Registration form",
        initialRoute: "/",
        routes: {
          "/": (context) => const Welcome(),
          "/log_in": (context) => const Login(),
          "/sign_up": (context) => const SignUp(),
          "/sign_up_2": (context) => const SignUp2(),
        });
  }
}
