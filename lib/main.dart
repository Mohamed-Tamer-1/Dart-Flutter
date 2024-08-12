import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
        home: Scaffold(
            appBar: AppBar(
              title: const Text("MyApp", style: TextStyle(color: Colors.white)),
              backgroundColor: const Color.fromARGB(255, 40, 40, 40),
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  size: 33,
                  color: Colors.white,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 40, 40, 40)),
                    alignment: Alignment.center,
                    child: const Text(
                      'Hello',
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    height: 470,
                    width: 250,
                    color: Colors.amber,
                    padding: const EdgeInsets.all(35),
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: 40,
                      runSpacing: 50,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                              const Color.fromARGB(255, 40, 40, 50),
                            ),
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                            padding:  WidgetStateProperty.all(const EdgeInsets.all(15)),
                          ),
                          child: const Text(
                            "1",
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                              const Color.fromARGB(255, 40, 40, 50),
                            ),
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                                    padding:  WidgetStateProperty.all(const EdgeInsets.all(15)),
                          ),
                          child: const Text(
                            "2",
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                              const Color.fromARGB(255, 40, 40, 50),
                            ),
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                                    padding:  WidgetStateProperty.all(const EdgeInsets.all(15)),
                          ),
                          child: const Text(
                            "3",
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                              const Color.fromARGB(255, 40, 40, 50),
                            ),
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                                    padding:  WidgetStateProperty.all(const EdgeInsets.all(15)),
                          ),
                          child: const Text(
                            "4",
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                              const Color.fromARGB(255, 40, 40, 50),
                            ),
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                                    padding:  WidgetStateProperty.all(const EdgeInsets.all(15)),
                          ),
                          child: const Text(
                            "5",
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                              const Color.fromARGB(255, 40, 40, 50),
                            ),
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                                    padding:  WidgetStateProperty.all(const EdgeInsets.all(15)),
                          ),
                          child: const Text(
                            "6",
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 40, 40, 40)),
                    alignment: Alignment.center,
                    child: const Text(
                      'Hello',
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            )));
  }
}
