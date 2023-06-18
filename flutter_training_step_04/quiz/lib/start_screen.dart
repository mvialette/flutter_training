import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {

  const StartScreen(this.aCallbackFunction,{super.key});

  final void Function() aCallbackFunction;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        //inAxisAlignment: MainAxisAlignment.min,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //AssetImage('images/quiz-logo.png'),
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          const Text(
            style: TextStyle(color: Colors.white),
            'Learn Flutter the fun way!',
          ),
          SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white
              ),
              onPressed: () {
                aCallbackFunction();
              },
              icon: const Icon(Icons.start),
              label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
