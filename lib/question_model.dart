class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];

  list.add(Question(
    "What is the value of  5 + 3 * 2  ?",
    [
      Answer("10", false),
      Answer("16", false),
      Answer("11", true),
      Answer("13", false),
    ],
  ));

  list.add(Question(
    "What is the square root of 81 ?",
    [
      Answer("7",false ),
      Answer("8", false),
      Answer("9", true),
      Answer("10", false),
    ],
  ));

  list.add(Question(
    "A triangle with two equal sides and two equal angles is called a(n) _________ triangle.",
    [
      Answer("Scalene", false),
      Answer("Isosceles", true),
      Answer("Equilateral", false),
      Answer("Right-angled",false ),
    ],
  ));

  list.add(Question(
    "What is the value of X  if  2x + 5 = 15 ?",
    [
      Answer("5", true),
      Answer("10", false),
      Answer("2.5",false ),
      Answer("7.5", false),
    ],
  ));

  return list;
}
