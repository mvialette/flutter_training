import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';

class ResultsScreen extends StatelessWidget {

  final List<String> chosenAnswers;

  const ResultsScreen({
    super.key, required this.chosenAnswers
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Results : '),
              SizedBox(
                height: 30,
              ),
              ...chosenAnswers.map((oneAnswer) {
                return Text(oneAnswer);
              }),
              ...questions.map((oneQuizQuestion) {
                return Text(oneQuizQuestion.answers[0], style: TextStyle(color: Colors.white),);
              }),
              //Text('tutu'),
              SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: (){},
                  child: Text('Restart quiz'),
              ),
            ],
          ),
      ),
    );
  }
}