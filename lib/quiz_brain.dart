import 'question.dart';

class QuizBrain {

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Bangladesh is an island country off the coast of India.', false),
    Question('The national language of Bangladesh is Urdu', false),
    Question('The currency of Bangladesh is Taka', true),
    Question('\'Bangladesh\' mean land of Bangalis', true),
    Question('Bangladesh is bigger than Pakistan.', false),
    Question('Textile is the main export of Bangladesh?', true),
    Question(
        'Sylhet is the capital of Bangladesh', false),
    Question(
        'Rikshaw is the common mode of transport in Bangladeshi cities', true),
    Question(
        'Bangladesh\'s flag look like Green background with red circle in centre', true),
    Question(
        'Bangladesh is located in Africa continent', false),
    Question('Main religion practiced in Bangladesh is Islam', true),
    Question(
        'Bangladesh become Independent in 1952', false),
    Question(
        'Prime Minister of Bangladesh is Sheikh Hasina', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length -1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returing true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}