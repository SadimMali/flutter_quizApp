import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  void onPressed() {}
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
          const Text(
            "Learn flutter the fun way!",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 18),
            ),
            onPressed: onPressed,
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
