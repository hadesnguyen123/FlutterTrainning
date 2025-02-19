class QuizQuestion {
  final String text;
  final List<String> answers;
  const QuizQuestion(this.text, this.answers);

  List<String> getShuffledAnswers (){
    final shufferedList = List.of(answers);
    shufferedList.shuffle();
    return shufferedList;
  }
}