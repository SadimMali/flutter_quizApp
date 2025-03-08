import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            spacing: 15,
            children: summaryData.map(
              (data) {
                return Row(
                    spacing: 30,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(
                            10), // Padding inside the number
                        decoration: BoxDecoration(
                          color: data['correct_answer'] == data['user_answer']
                              ? Colors.cyan
                              : Colors.purpleAccent, // Green background
                          borderRadius:
                              BorderRadius.circular(20), // Rounded corners
                        ),
                        child: Text(
                          ((data['question_index'] as int) + 1).toString(),
                          style: const TextStyle(
                            // color: Colors., // White text color
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data['question'] as String,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              data['correct_answer'] as String,
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 170, 159, 255),
                                  fontSize: 14),
                            ),
                            Text(
                              data['user_answer'] as String,
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 198, 255, 198),
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ]);
              },
            ).toList()),
      ),
    );
  }
}
