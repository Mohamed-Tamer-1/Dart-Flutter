import 'package:flutter/material.dart';

class ScreenUtil {
  static double halfScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    // double halfHeight = ScreenUtil.halfScreenHeight(context);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        home: SafeArea(
            child: Scaffold(
                backgroundColor: const Color.fromARGB(221, 35, 35, 35),
                appBar: AppBar(
                  backgroundColor: const Color.fromARGB(255, 45, 45, 45),
                  title: const Center(
                    child: Text(
                      'ASDM',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                    iconSize: 30,
                    color: Colors.white,
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                      iconSize: 25,
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.filter_alt_outlined),
                      iconSize: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
                bottomNavigationBar: BottomAppBar(
                  color: const Color.fromARGB(255, 45, 45, 45),
                  height: 60,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.help_outline),
                        iconSize: 25,
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.settings),
                        iconSize: 25,
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.language),
                        iconSize: 25,
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add_circle_outline_sharp),
                        iconSize: 32,
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.not_started_outlined),
                        iconSize: 25,
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.check_circle_outline),
                        iconSize: 25,
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.list),
                        iconSize: 25,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                body: SingleChildScrollView(
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          color: const Color(0xFF2e2e2e),
                          child: const TextField(
                            keyboardType: TextInputType.url,
                            keyboardAppearance: Brightness.light,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "       URL",
                              hintStyle: TextStyle(
                                color: Color(0xFFa5a5a5),
                                fontSize: 20,
                              ),
                              suffixIcon: Icon(
                                Icons.search,
                                color: Color(0xFFa5a5a5),
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}
