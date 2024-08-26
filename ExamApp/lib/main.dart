import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(const ExamApp());
}

class ExamApp extends StatelessWidget {
  const ExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: const Color.fromARGB(137, 54, 53, 53),
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(137, 44, 43, 43),
              title: const Text(
                'Exam App',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            body: const ExamPage()));
  }
}

class ExamPage extends StatefulWidget {
  const ExamPage({super.key});

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  int imagenumber = 0;
  int pagenumber = 1;
  int rightanswers = 0;
  List<Widget> answerresult = [];
  List<String> questions = [
    "The number of planets in the solar system is 8",
    "Cats are carnivores",
    "China located on the African continent",
    "The Earth is flat, not spherical",
    "Humans can survive without eating meat",
    "The sun revolves around the earth and the earth revolves around the moon",
    "Animals do not feel pain",
  ];
  List<String> images = [
    'assets/images/image-1.jpg',
    'assets/images/image-2.jpg',
    'assets/images/image-3.jpg',
    'assets/images/image-4.jpg',
    'assets/images/image-5.jpg',
    'assets/images/image-6.jpg',
    'assets/images/image-7.jpg',
  ];
  List<bool> answer = [
    true,
    true,
    false,
    false,
    true,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    void isfinished() {
      if (imagenumber == answer.length - 1) {
        if (rightanswers > 3) {
          Alert(
            context: context,
            type: AlertType.success,
            title: "Congratulations",
            desc: "You Answerd $rightanswers Out of 7.",
            buttons: [
              DialogButton(
                onPressed: () => Navigator.pop(context),
                width: 120,
                child: const Text(
                  "Restart",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ],
          ).show();
        } else {
          Alert(
            context: context,
            type: AlertType.error,
            title: "Failed",
            desc: "You Answerd $rightanswers Out of 7.",
            buttons: [
              DialogButton(
                onPressed: () => Navigator.pop(context),
                width: 120,
                child: const Text(
                  "Restart",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ],
          ).show();
        }
        imagenumber = 0;
        pagenumber = 1;
        rightanswers = 0;
        answerresult.clear();
      } else {
        imagenumber++;
      }
    }

    Padding question() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Question $pagenumber',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: answerresult,
            ),
            Image.asset(images[imagenumber]),
            const SizedBox(height: 10),
            Text(
              questions[imagenumber],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                
              ),
            ),
            const SizedBox(height: 120),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                    onPressed: () {
                      pagenumber++;
                      bool correctanswer = answer[imagenumber];

                      setState(() {
                        if (correctanswer == true) {
                          rightanswers++;
                          answerresult.add(
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.thumb_up,
                                color: Colors.green,
                              ),
                            ),
                          );
                        } else {
                          answerresult.add(const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.thumb_down,
                              color: Colors.red,
                            ),
                          ));
                        }
                        isfinished();
                      });
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.blue[800])),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "True",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    )),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      pagenumber++;
                      bool correctanswer = answer[imagenumber];

                      setState(() {
                        if (correctanswer == false) {
                          rightanswers++;
                          answerresult.add(
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.thumb_up,
                                color: Colors.green,
                              ),
                            ),
                          );
                        } else {
                          answerresult.add(const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.thumb_down,
                              color: Colors.red,
                            ),
                          ));
                        }
                        isfinished();
                      });
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.red[800])),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "False",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    )),
              ],
            ),
          ],
        ),
      );
    }

    return Column(
      children: [question()],
    );
  }
}
