import 'dart:async';

import 'package:assignment_module_4/question73/second_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen74 extends StatefulWidget {
  const SecondScreen74({super.key});

  @override
  State<SecondScreen74> createState() => _SecondScreen74State();
}

class _SecondScreen74State extends State<SecondScreen74> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Go Back TO First Screen",
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
