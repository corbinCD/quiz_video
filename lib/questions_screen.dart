import 'package:flutter/material.dart';
import "package:quiz_video/answer_button.dart";
import 'package:quiz_video/questions.dart';
import "package:google_fonts/google_fonts.dart";

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {});
    currentQuestionIndex++;
  }

  @override
  Widget build(context) {
    final currenQuestions = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
            //can use multiple aligments like space around
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currenQuestions.text,
                // style: GoogleFonts.lato(
                style: const TextStyle(
                  color: const Color.fromARGB(255, 201, 153, 251),
                  fontFamily: "penguin",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                //style: const TextStyle(
                textAlign: TextAlign.center,

                //),
              ),
              const SizedBox(height: 30),
              ...currenQuestions.getShuffledAnswer().map((answer) {
                return AnswerButton(
                  answer,
                  () {
                    answerQuestion(answer);
                  },
                );
              }),
            ]),
      ),
    );
  }
}