import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  int first1;
  int second1;

  int sum = 0;

  SecondScreen({required this.first1, required this.second1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sum Of First and Second Value is :  ${sum = first1 + second1}",
                style: TextStyle(

                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
