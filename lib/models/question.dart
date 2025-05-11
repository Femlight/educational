class Question {
  final String id;
  final String subject;
  final int questionNumber;
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;

  const Question({
    required this.id,
    required this.subject,
    required this.questionNumber,
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
  });
}