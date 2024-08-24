import 'package:flutter/material.dart';

class ScreenUtil {
  static double halfScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    // double halfHeight = ScreenUtil.halfScreenHeight(context);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        home: SafeArea(
            child: Scaffold(
          body: Column(
            children: [
              Container(
                width: double.infinity,
                color: const Color(0xFF0A5CFE),
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                  color: Colors.white,
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 380,
                  color: const Color(0xFF0A5CFE),
                  alignment: Alignment.center,
                  child: const Text(
                    "Welcome",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.black,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "welcome",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Courgette',
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/log_in");
                        },
                        style: ButtonStyle(
                            alignment: Alignment.center,
                            backgroundColor: WidgetStateProperty.all(
                                const Color(0xFF161616)),
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            padding: WidgetStateProperty.all(
                                const EdgeInsets.fromLTRB(130, 5, 130, 5))),
                        child: const Text(
                          "Guest",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/log_in");
                        },
                        style: ButtonStyle(
                            alignment: Alignment.center,
                            backgroundColor: WidgetStateProperty.all(
                                const Color(0xFF161616)),
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            padding: WidgetStateProperty.all(
                                const EdgeInsets.fromLTRB(130, 5, 130, 5))),
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/sign_up");
                        },
                        style: ButtonStyle(
                            alignment: Alignment.center,
                            backgroundColor: WidgetStateProperty.all(
                                const Color(0xFF161616)),
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            padding: WidgetStateProperty.all(
                                const EdgeInsets.fromLTRB(118, 5, 118, 5))),
                        child: const Text(
                          "Sign up",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )));
  }
}
