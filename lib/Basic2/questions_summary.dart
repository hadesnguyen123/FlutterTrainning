import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              final bool isCorrect =
                  data['user_answer'] == data['correct_answer']; // Kiểm tra đúng/sai
              final Color answerColor = isCorrect ? Colors.green : Colors.red; // Màu câu trả lời
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start, // Căn hàng ngang từ trên xuống
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: answerColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Căn trái nội dung câu hỏi
                        children: [
                          Text(
                            data['question'] as String,
                            style: GoogleFonts.lato(
                                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          const SizedBox(height: 5),
                          Text(
                              "Your answer: ${data['user_answer'] as String}",
                              style: GoogleFonts.lato(
                                  fontSize: 14, color: answerColor)),
                          Text(
                              "Right answer: ${data['correct_answer'] as String}",
                              style: GoogleFonts.lato(
                                  fontSize: 14, color: Colors.green)),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
