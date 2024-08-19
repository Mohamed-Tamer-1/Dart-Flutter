import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class ReusableButton extends StatelessWidget {
  final String iconPath;
  final String text;
  final VoidCallback onPressed;

  const ReusableButton({
    super.key,
    required this.iconPath,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        alignment: Alignment.center,
        backgroundColor: WidgetStateProperty.all(Colors.indigo[800]),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        padding: WidgetStateProperty.all(
          const EdgeInsets.fromLTRB(40, 5, 41, 5),
        ),
      ),
      child: SizedBox(
        width: 300,
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath, // Path to your image
              width: 24, // Width of the image
              height: 24, // Height of the image
            ),
            const SizedBox(width: 10), // Spacing between image and text
            Text(
              text,
              style: const TextStyle(fontSize: 25, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUp2 extends StatelessWidget {
  const SignUp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        home: Scaffold(
          appBar: AppBar(
            title: const Center(
                child: Text("Sign up", style: TextStyle(color: Colors.white))),
            backgroundColor: const Color(0xFF242424),
            leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/SignUp");
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 33,
                color: Colors.white,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/Three_dots.svg',
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
              ),
            ],
          ),
          body: Container(
            color: const Color(0xFF242424),
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 350,
                          decoration: BoxDecoration(
                              color: const Color(0xFF2e2e2e),
                              borderRadius: BorderRadius.circular(50)),
                          child: const TextField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Required",
                              hintStyle: TextStyle(
                                color: Color(0xFFa5a5a5),
                                fontSize: 15,
                              ),
                              suffixIcon: Icon(
                                Icons.visibility_off_outlined,
                                color: Color(0xFFa5a5a5),
                              ),
                              labelText: "Password",
                              labelStyle: TextStyle(
                                color: Color(0xFFa5a5a5),
                                fontSize: 20,
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Color(0xFFa5a5a5),
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 350,
                          decoration: BoxDecoration(
                              color: const Color(0xFF2e2e2e),
                              borderRadius: BorderRadius.circular(50)),
                          child: const TextField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Required",
                              hintStyle: TextStyle(
                                color: Color(0xFFa5a5a5),
                                fontSize: 15,
                              ),
                              suffixIcon: Icon(
                                Icons.visibility_off_outlined,
                                color: Color(0xFFa5a5a5),
                              ),
                              labelText: "Confirm password",
                              labelStyle: TextStyle(
                                color: Color(0xFFa5a5a5),
                                fontSize: 20,
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Color(0xFFa5a5a5),
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              alignment: Alignment.center,
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.indigo[800]),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                              padding: WidgetStateProperty.all(
                                  const EdgeInsets.fromLTRB(130, 5, 130, 5))),
                          child: const Text(
                            "Sign up",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
