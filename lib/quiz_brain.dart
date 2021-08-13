import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        'Monica dances with a raw turkey on her head during a Thanksgiving episode.',
        true),
    Question(
        'Phoebe, the musician in the group, is known for playing the bongo drums.',
        false),
    Question(
        'You always knew Janice was around when you heard her signature phrase: "Oh ... my ... God!"',
        true),
    Question(
        'Ross claimed he learned the meaning of the word "unagi" while taking karate lessons',
        true),
    Question(
        'Rachel has one item in the kitchen that belongs to her, a bottle opener.',
        true),
    Question('Joey meets his hand twin in Las Vegas.', true),
    Question(
        'After giving birth to Emma, Rachel gets engaged to Ross at the hospital.',
        false),
    Question(
        'After Monica\'s dad ruins her childhood possessions, he gives her a Porsche as a way of apologizing.',
        true),
    Question(
        'When the friends are trying to navigate a couch up the stairs, Ross yells "Turn!".',
        false),
    Question(
        'Chandler is sent to Tulsa after he falls asleep during a meeting at work.',
        true),
    Question(
        '"Mrs. Whiskerson" is the name of the hairless cat Rachel buys for 1,000.',
        true),
    Question('Of all her songs, Phoebe\'s No. 1 hit is "Smelly Cat."', true),
    Question(
        'Rachel\'s alter ego, Regina Phalange, would appear when she or one of the friends was in a jam',
        false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
