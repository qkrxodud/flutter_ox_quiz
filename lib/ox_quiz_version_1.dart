import 'package:flutter/material.dart';

void main() {
  runApp(OxQuiz());
}

class OxQuiz extends StatefulWidget {
  const OxQuiz({Key? key}) : super(key: key);

  @override
  _OxQuizState createState() => _OxQuizState();
}

class _OxQuizState extends State<OxQuiz> {
  int quizNumber = 0;

  List quizzes = [
    '국악에서 자진모리, 중중모리, 휘모리 등의 빠르기말이 있는데 가장 빠른 것은 진양조이다?',
    '달팽이도 이빨이 있는가?',
    '구기 종목 중에 가장 작은 공을 사용하는 경기는 골프이다?',
    '제 1회 아테네 올림픽은 1896년에 열렸다?',
    '벼락은 남자보다 여자를 칠 가능성이 더 많은가?',
  ];

  List answer = [
    false,
    true,
    false,
    true,
    false,
  ];

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
                      quizzes[quizNumber],
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
                              bool correctAnser = answer[quizNumber];
                              if (correctAnser == true) {
                                answerIcon.add(
                                  const Icon(
                                    Icons.mood,
                                    color: Colors.green,
                                  ),
                                );
                              } else {
                                answerIcon.add(
                                  const Icon(
                                    Icons.mood_bad,
                                    color: Colors.red,
                                  ),
                                );
                              }
                              quizNumber++;
                            });
                          },
                          child: Container(
                              color: Colors.green,
                              child: const Center(
                                  child: Icon(Icons.check_circle_outline))),
                        )),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                            child: TextButton(
                          onPressed: () {
                            setState(() {
                              bool correctAnser = answer[quizNumber];
                              if (correctAnser == false) {
                                answerIcon.add(
                                  const Icon(
                                    Icons.mood,
                                    color: Colors.green,
                                  ),
                                );
                              } else {
                                answerIcon.add(
                                  const Icon(
                                    Icons.mood_bad,
                                    color: Colors.red,
                                  ),
                                );
                              }
                              quizNumber++;
                            });
                          },
                          child: Container(
                              color: Colors.red,
                              child: const Center(
                                  child: Icon(Icons.highlight_off))),
                        )),
                      ],
                    )),
                const SizedBox(
                  height: 5,
                ),
                Row(children: answerIcon)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
