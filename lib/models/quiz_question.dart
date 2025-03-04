class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shulffledAnswers = List.of(answers);
    shulffledAnswers.shuffle();
    return shulffledAnswers;
  }
}
