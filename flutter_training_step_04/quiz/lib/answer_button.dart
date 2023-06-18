import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  AnswerButton(this.buttonText, this.onTap, {super.key});


  String buttonText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red, 
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)
            ),
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          //padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
        ),
        child: Text(buttonText, textAlign: TextAlign.center,));
  }
}
