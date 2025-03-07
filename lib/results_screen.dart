import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/question_summary.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.restartQuiz,
      {super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  final void Function() restartQuiz;

// This getter property generates a summary of the user's answers.
// It creates a list of maps where each map contains the question index, the question text,
// the correct answer, and the user's answer.
  List<Map<String, Object>> get summaryData {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          "question_index": i,
          "question": questions[i].text,
          "correct_answer": questions[i].answers[0],
          "user_answer": chosenAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(context) {
    final numTotalQuestions = questions.length;
    final numCorrectAnswer = summaryData
        .where(
          (data) => data['correct_answer'] == data['user_answer'],
        )
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $numCorrectAnswer out of $numTotalQuestions questions correctly!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: const Color.fromARGB(255, 241, 160, 246)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            // sdjflksjdf
            QuestionSummary(summaryData),
            SizedBox(
              height: 30,
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 18,
                  )),
              onPressed: restartQuiz,
              icon: const Icon(
                Icons.refresh,
                color: Colors.white,
                size: 25,
              ),
              label: Text('Restart Quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}
