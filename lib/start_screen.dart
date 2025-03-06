import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 20,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.4,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Learn flutter the fun way!",
            style: GoogleFonts.lato(
              fontSize: 24,
              color: const Color.fromARGB(255, 237, 233, 252),
            ),
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 18),
            ),
            onPressed: startQuiz,
            icon: const Icon(
              Icons.arrow_right_alt,
              size: 30,
              color: Colors.white,
            ),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
