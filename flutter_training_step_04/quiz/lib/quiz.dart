import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/results_screen.dart';
import 'package:quiz/start_screen.dart';

class Quiz extends StatefulWidget {

  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  List<String > selectedAnswers = [];
  var myCurrentScreen = 'start-screen';

  /*
  @override
  void initState(){
    myCurrentScreen = 'start-screen';
    super.initState();
  }
  */

  void switchScreen(){
    setState(() {
      myCurrentScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        //selectedAnswers = [];
        myCurrentScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if(myCurrentScreen == 'question-screen'){
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    } else if(myCurrentScreen == 'results-screen'){
      screenWidget = ResultsScreen(chosenAnswers : selectedAnswers);
    }

    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Quiz App"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ],
          ),
        ),
        child: screenWidget,
      ),
    ),);

  }
}