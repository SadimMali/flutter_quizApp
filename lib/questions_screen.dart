import 'package:flutter/material.dart';

import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void onTap() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    }
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answerText: answer, onTap: onTap);
            }),
          ],
        ),
      ),
    );
  }
}
