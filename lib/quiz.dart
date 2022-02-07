import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'question.dart';

class Quiz {
  int _quizNumber = 0;
  final List<Icon> _answerIcon = [];
  final List<Question> _questions = [
    Question('국악에서 자진모리, 중중모리, 휘모리 등의 빠르기말이 있는데 가장 빠른 것은 진양조이다?', false),
    Question('달팽이도 이빨이 있는가?', true),
    Question('구기 종목 중에 가장 작은 공을 사용하는 경기는 골프이다?', false),
    Question('제 1회 아테네 올림픽은 1896년에 열렸다?', true),
    Question('벼락은 남자보다 여자를 칠 가능성이 더 많은가?', false),
    Question('꿀벌은 꽃에서 꿀을 채취한다. 그러므로 꽃의 꿀과 꿀벌의 꿀은 똑같다?', false),
    Question('통조림을 최초로 생각한 사람은 프랑스 황제 나폴레옹이다.?', true),
    Question('투명인간은 장님이다', true),
    Question('프랑스에서 버섯을 따는데 돼지를 이용한다.', true),
    Question('고기를 많이 먹으면 방귀냄새도 더 독하다.', true),
  ];

  // 질문가져오기
  String getQuestion() {
    return _questions[_quizNumber].getQuestion();
  }

  // 답변 가져오기
  bool getAnswer() {
    return _questions[_quizNumber].getAnswer();
  }

  // 다음 질문
  void nextQuestion() {
    print(_quizNumber);
    print(_questions.length - 1);
    if (_quizNumber < _questions.length - 1) _quizNumber++;
  }

  // 질문체크하기.
  void checkQuestion(bool selectAnswer) {
    if (_answerIcon.length == _questions.length) return;

    if (_questions[_quizNumber].getAnswer() == selectAnswer) {
      _answerIcon.add(
        const Icon(
          Icons.mood,
          color: Colors.green,
        ),
      );
    } else if (_questions[_quizNumber].getAnswer() != selectAnswer) {
      _answerIcon.add(
        const Icon(
          Icons.mood_bad,
          color: Colors.red,
        ),
      );
    }
  }

  // 마지막 질문인지 체크하기
  bool checkLastQuiz() {
    bool result = false;
    if (_quizNumber == _questions.length - 1) {
      result = true;
    }
    return result;
  }

  // 답변 초기화
  void clear() {
    _quizNumber = 0;
    _answerIcon.clear();
  }

  // 아이콘 가져오기
  List<Icon> getIcons() {
    return _answerIcon;
  }
}
