import 'package:flutter/material.dart';
import "package:quiz_video/answer_button.dart";
class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        //can use multiple aligments like space around
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text("The question...", ),
        const SizedBox(height: 30),
       AnswerButton("Answer 1",(){}),
       AnswerButton("Answer 2",(){}),
       AnswerButton("Answer 3",(){}),
      ]),
    );
  }
}
