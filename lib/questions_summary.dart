import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          
          children: summaryData.map((data) {
            return Row(
              children: [
                Text(((data['question_index'] as int) + 1).toString(), style: const TextStyle(fontWeight: FontWeight.bold,),), // type casting
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                      const SizedBox(height: 5,),
                      Text(data['user_answer'] as String , style: const TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 243, 229, 33))),
                      Text(data['correct_answer'] as String, style: const TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 85, 179, 255))),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
