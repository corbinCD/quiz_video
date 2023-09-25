import "dart:ffi";

import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.purple,
          ),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 60),
                Image.asset("assets/quiz-logo.png"),
                const SizedBox(height: 40),
                const Text("LearnFLUTTETrTheRightWAy" ,style: const TextStyle(color: Colors.white),),
                const SizedBox(height: 20),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text("Start qUiz"),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
