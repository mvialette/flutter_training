import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/question_identifier.dart';
import 'package:quiz/question_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {

  final List<Map<String, Object>> summaryData;

  const QuestionsSummary({
    super.key, required this.summaryData
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((aDataStructure) {
            return SummaryItem(aDataStructure);
          },).toList(),
        ),
      ),
    );
  }
}