import 'package:flutter/material.dart';

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
            body: Center(
                child: Container(
              height: 300,
              width: 300,
              padding: const EdgeInsets.all(10),
              color: const Color.fromARGB(255, 128, 92, 10),
              child: Stack(
                children: [
                  Positioned(
                      width: 100,
                      height: 100,
                      left: 0,
                      top: 0,
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.black,
                        child: const Text(
                          "mohamed",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      )),
                  Positioned(
                      width: 100,
                      height: 100,
                      right: 0,
                      top: 0,
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.white,
                        child: const Text(
                          "tamer",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      )),
                  Positioned(
                      width: 100,
                      height: 100,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.amber,
                        child: const Text(
                          "youssef",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 17, 255),
                            fontSize: 20,
                          ),
                        ),
                      )),
                  Positioned(
                      width: 100,
                      height: 100,
                      left: 0,
                      bottom: 0,
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.green,
                        child: const Text(
                          "bassem",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 0, 0),
                            fontSize: 20,
                          ),
                        ),
                      )),
                  Center(
                      child: Container(
                        width: 110,
                        height: 110,
                        alignment: Alignment.center,
                        color: const Color.fromARGB(255, 0, 76, 254),
                        child: const Text(
                          "hegab",
                          style: TextStyle(
                            color: Color.fromARGB(255, 217, 255, 0),
                            fontSize: 20,
                          ),
                        ),
                      ))
                ],
              ),
            ))));
  }
}
