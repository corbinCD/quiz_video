import 'package:flutter/material.dart';
import 'package:quiz_video/questions.dart';
import 'package:quiz_video/questions_screen.dart';
import 'package:quiz_video/results_screen.dart';
import "package:quiz_video/start_screen.dart";
import 'package:quiz_video/results_screen.dart';

//three ways to switch screens

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quizstate();
  }
}

class _Quizstate extends State<Quiz> {
  Widget? activeScreen;
   List<String> selectedAnswer = [];
  // alt 2 Widget activeScreen = activeScreen == "start-screen"

  //the magical if

  // alt 2 if(activeScreen == "questions-screen") {
  // alt 2 screenWidget = const cQuestionsSCreen();
  //}
  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      // alt 1 activeScreen = 'questions-screen';
      activeScreen = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length){
      setState(() {
        activeScreen = const ResultsScreen();
        selectedAnswer = [];
      });
    }
  }
 
  @override
  Widget build(context) {
    // alt 2 var  screehWidget = StartScreen(SwitchScreen);
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
          //alt 2 child: screenWidget,

          //if statments things 1 == thing 2 ? code to run if true : code to run if false

          //alt 1 child: activeScreen == "start-screen"
          //? StartScreen(switchSCreen)
          //: const QuestionsScreen(),
        ),
      ),
    );
  }
}
