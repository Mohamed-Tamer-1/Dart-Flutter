import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const ImagePage());
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftimage = 1;
  int rightimage = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        home: Scaffold(
            backgroundColor: Colors.indigo,
            appBar: AppBar(
              title: const Text(
                "Math The Picture",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.indigo[800],
            ),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    leftimage == rightimage ? 'Congratulation!' : "Try Again",
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  leftimage = Random().nextInt(8) + 1;
                                  rightimage = Random().nextInt(8) + 1;
                                });
                              },
                              child: Image.asset(
                                  'assets/images/image-$leftimage.png'))),
                      Expanded(
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  rightimage = Random().nextInt(8) + 1;
                                  leftimage = Random().nextInt(8) + 1;
                                });
                              },
                              child: Image.asset(
                                  'assets/images/image-$rightimage.png'))),
                    ],
                  ),
                ])));
  }
}
