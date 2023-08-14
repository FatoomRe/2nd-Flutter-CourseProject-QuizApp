// this file will contain the questions blueprint

class QuizQuestion {

  const QuizQuestion(this.text, this.answers); //cosntructor

  final String text;
  final List<String> answers;

  List<String> getAShuffledAnswer() {
    final shuffledList = List.of(answers); // 1.create copy of answers
    shuffledList.shuffle(); // 2.call shuffle method on the copy
    return shuffledList; // 3.return the shuffled copy
  }
}

