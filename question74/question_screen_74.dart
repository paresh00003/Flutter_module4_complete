import 'dart:async';

import 'package:assignment_module_4/question73/second_screen.dart';
import 'package:assignment_module_4/question74/second_screen.dart';
import 'package:flutter/material.dart';

class QuestionScreen74 extends StatefulWidget {
  const QuestionScreen74({super.key});

  @override
  State<QuestionScreen74> createState() => _QuestionScreen74State();
}

class _QuestionScreen74State extends State<QuestionScreen74> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      appBar: AppBar(
        title: Text("Question 74"),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
            children: [
          ElevatedButton(
            onPressed: () {
              
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen74(),));
              
              
            },
            child: Text(
              "Press Here To Next Activity",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
