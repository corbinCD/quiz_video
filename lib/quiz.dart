import 'package:flutter/material.dart';
import 'package:quiz_video/questions_screen.dart';
import "package:quiz_video/start_screen.dart";

class Quiz extends StatefulWidget{
  const Quiz({super.key});

@override
  State<Quiz> createState(){
    return  _Quizstate();
  }
}
class _Quizstate extends State<Quiz>{
  Widget? activeScreen;
  // var activeScreen = 'start-screen';

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen(){  
    setState((){
      // activeScreen = 'questions-screen';
      activeScreen = const QuestionScreen();
    });
  }
  @override
  Widget build(context){    
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255,78,13,151),
              Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end:  Alignment.bottomRight,
          ),
            ),
          child: activeScreen,
          //if statments things 1 == thing 2 ? code to run if true : code to run if false 
          // child: activeScreen == "start-screen" 
          //? StartScreen(switchSCreen)
          //: const QuestionsScreen(),
        ),
      ),
    );
  }
}