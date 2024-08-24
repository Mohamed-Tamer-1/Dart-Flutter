import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            body: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text(
                      "Scania",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Color.fromARGB(255, 15, 115, 187)),
                    ),
                  ),
                  Expanded(
                      child: Stack(
                    children: [
                      Positioned(
                        bottom: 10,
                        right: 80,
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 5, color: Colors.blue),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: SvgPicture.asset("assets/svg/facebook.svg")),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 180,
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 5, color: Colors.red),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child:
                                SvgPicture.asset("assets/svg/instagram.svg")),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 280,
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 5,
                                  color: const Color.fromARGB(255, 0, 13, 255)),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child:
                                SvgPicture.asset("assets/svg/linked-in.svg")),
                      ),
                    ],
                  )),
                ],
              ),
            )));
  }
}
