import 'package:flutter/material.dart';
import '../models/question.dart';

class QuizController extends ChangeNotifier {
  int _selectedAnswerIndex = -1;
  bool _hasSubmitted = false;
  int _currentQuestionIndex = 0;
  final List<Question> _questions = [
    Question(
      id: '1',
      subject: 'Economics',
      questionNumber: 6,
      questionText: 'Select the correct judgment about the global economy from the list below.',
      options: [
        'The functioning of the world economy is based on the international division of labor',
        'The trade balance is the difference between imports and exports for a certain period',
        'State regulation of foreign trade is carried out exclusively by tariff methods',
        'International economic relations are carried out in the form of monetary and credit relations',
      ],
      correctAnswerIndex: 0,
    ),
    // Add more questions here
  ];

  Question get currentQuestion => _questions[_currentQuestionIndex];
  int get selectedAnswerIndex => _selectedAnswerIndex;
  bool get hasSubmitted => _hasSubmitted;
  bool get isAnswerSelected => _selectedAnswerIndex != -1;

  void selectAnswer(int index) {
    if (!_hasSubmitted) {
      _selectedAnswerIndex = index;
      notifyListeners();
    }
  }

  bool checkAnswer() {
    _hasSubmitted = true;
    notifyListeners();
    return _selectedAnswerIndex == currentQuestion.correctAnswerIndex;
  }

  void nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      _currentQuestionIndex++;
      _selectedAnswerIndex = -1;
      _hasSubmitted = false;
      notifyListeners();
    }
  }
}