class QuestionModel {
  final String question;
  final List<Answers> answers;
  QuestionModel({required this.question, required this.answers});
}

class Answers {
  final String answer;
  final bool isCorrect;
  Answers({required this.answer, required this.isCorrect});
}
List<QuestionModel> questions = [
  QuestionModel(
    question: "Who is the owner of Flutter?",
    answers: [
      Answers(answer: "Nokia", isCorrect: false),
      Answers(answer: "Samsung", isCorrect: false),
      Answers(answer: "Google", isCorrect: true),
      Answers(answer: "Apple", isCorrect: false),
    ],
  ),
  QuestionModel(
    question: "What language is used to write Flutter apps?",
    answers: [
      Answers(answer: "Java", isCorrect: false),
      Answers(answer: "Kotlin", isCorrect: false),
      Answers(answer: "Dart", isCorrect: true),
      Answers(answer: "Swift", isCorrect: false),
    ],
  ),
  QuestionModel(
    question: "Which company developed Android?",
    answers: [
      Answers(answer: "Apple", isCorrect: false),
      Answers(answer: "Microsoft", isCorrect: false),
      Answers(answer: "Google", isCorrect: true),
      Answers(answer: "Samsung", isCorrect: false),
    ],
  ),
  QuestionModel(
    question: "Which widget is used for layout in Flutter?",
    answers: [
      Answers(answer: "Text", isCorrect: false),
      Answers(answer: "Column", isCorrect: true),
      Answers(answer: "Button", isCorrect: false),
      Answers(answer: "Image", isCorrect: false),
    ],
  ),
  QuestionModel(
    question: "What is the main function in Flutter?",
    answers: [
      Answers(answer: "runFlutter()", isCorrect: false),
      Answers(answer: "startApp()", isCorrect: false),
      Answers(answer: "main()", isCorrect: true),
      Answers(answer: "runApp()", isCorrect: false),
    ],
  ),
  QuestionModel(
    question: "Which keyword is used to declare a constant in Dart?",
    answers: [
      Answers(answer: "final", isCorrect: false),
      Answers(answer: "let", isCorrect: false),
      Answers(answer: "const", isCorrect: true),
      Answers(answer: "var", isCorrect: false),
    ],
  ),
  QuestionModel(
    question: "Which widget is used to add padding in Flutter?",
    answers: [
      Answers(answer: "Padding", isCorrect: true),
      Answers(answer: "SizedBox", isCorrect: false),
      Answers(answer: "Container", isCorrect: false),
      Answers(answer: "Align", isCorrect: false),
    ],
  ),
  QuestionModel(
    question: "Which widget is used to make a scrollable list?",
    answers: [
      Answers(answer: "ListView", isCorrect: true),
      Answers(answer: "Text", isCorrect: false),
      Answers(answer: "Column", isCorrect: false),
      Answers(answer: "Row", isCorrect: false),
    ],
  ),
  QuestionModel(
    question: "Which method is used to start a Flutter app?",
    answers: [
      Answers(answer: "startApp()", isCorrect: false),
      Answers(answer: "runApp()", isCorrect: true),
      Answers(answer: "mainApp()", isCorrect: false),
      Answers(answer: "flutterStart()", isCorrect: false),
    ],
  ),
  QuestionModel(
    question: "Which widget is used to create buttons?",
    answers: [
      Answers(answer: "FlatButton", isCorrect: false),
      Answers(answer: "TextButton", isCorrect: true),
      Answers(answer: "ButtonWidget", isCorrect: false),
      Answers(answer: "InkWell", isCorrect: false),
    ],
  ),
];

