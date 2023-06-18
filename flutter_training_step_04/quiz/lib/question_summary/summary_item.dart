import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/question_identifier.dart';

class SummaryItem extends StatelessWidget {

  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = itemData['correct_answer'] == itemData['user_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text((itemData['question'] as String),
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 14,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 5,),
            Text((itemData['user_answer'] as String),
              style: TextStyle(color: Colors.blue),),
            Text((itemData['correct_answer'] as String),
              style: TextStyle(color: Colors.pink.shade200),),
          ],
          ),
        ),
      ],
    );
  }

}