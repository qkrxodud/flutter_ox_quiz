import 'package:flutter/material.dart';
import 'package:flutter_ox_quiz/quiz.dart';

void main() {
  runApp(const OxQuiz());
}

class OxQuiz extends StatefulWidget {
  const OxQuiz({Key? key}) : super(key: key);

  @override
  _OxQuizState createState() => _OxQuizState();
}

class _OxQuizState extends State<OxQuiz> {
  Quiz quiz = Quiz();
  List<Icon> answerIcon = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    flex: 5,
                    child: Center(
                        child: Text(
                          quiz.getQuestion(),
                          style: const TextStyle(color: Colors.white),
                        ))),
                Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  quiz.checkQuestion(true);
                                  quiz.nextQuestion();
                                });
                              },
                              child: Container(
                                  color: Colors.green,
                                  child: Center(
                                      child: Icon(
                                        Icons.check_circle_outline,
                                        color: Colors.grey.shade900,
                                      ))),
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  quiz.checkQuestion(false);
                                  quiz.nextQuestion();
                                });
                              },
                              child: Container(
                                  color: Colors.red,
                                  child: Center(
                                      child: Icon(
                                        Icons.highlight_off,
                                        color: Colors.grey.shade900,
                                      ))),
                            )),
                      ],
                    )),
                const SizedBox(
                  height: 5,
                ),
                Row(children: quiz.getIcons())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
