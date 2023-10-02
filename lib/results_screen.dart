import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    //TODO eat pie and CAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKE
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
     child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        const Text("eat cake and die"),
        const SizedBox(height:30,),
        const Text("i am the best"),
        const SizedBox(height: 30,),
        TextButton(onPressed: (){}, child: const Text("restarto quizo"))
      ],),),);
  }
}
