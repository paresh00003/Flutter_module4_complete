import 'package:assignment_module_4/main.dart';
import 'package:assignment_module_4/question67/profile.dart';
import 'package:flutter/material.dart';

class QuestionScreen67 extends StatefulWidget {
  const QuestionScreen67({super.key});

  @override
  State<QuestionScreen67> createState() => _QuestionScreen67State();
}

class _QuestionScreen67State extends State<QuestionScreen67> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Question 67'), actions: [
        PopupMenuButton(onSelected: (value) {
          print(value);

          switch (value) {
            case "0":
              break;

            case "1":
              break;
          }
        }, itemBuilder: (context) {
          return [
            PopupMenuItem(
              onTap: () {


                   Navigator.push(context, MaterialPageRoute(builder:  (context) => ProfilePage(),));

              },
              value: 0,
              child: Text("Profile"),
            ),
            PopupMenuItem(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:  (context) => Homescreen(),));
              },
              value: 1,
              child: Text("Logout"),
            ),
          ];
        })
      ]),
      body: Center(
        child: Container(
          child: Text(
            'Menu Button',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
