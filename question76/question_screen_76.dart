import 'package:assignment_module_4/question76/second_screen.dart';
import 'package:flutter/material.dart';

class QuestionScreen76 extends StatefulWidget {
  const QuestionScreen76({super.key});

  @override
  State<QuestionScreen76> createState() => _QuestionScreen76State();
}

class _QuestionScreen76State extends State<QuestionScreen76> {
  final FirstController = TextEditingController();
  final SecondController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 76'),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: FirstController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(

                label: Text('Enter First Number'),),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: SecondController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                 label: Text('Enter Second Number'),
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  int first = FirstController.text.isEmpty
                      ? 0
                      : (int.parse(FirstController.text.toString()));
                  int second = SecondController.text.isEmpty
                      ? 0
                      : (int.parse(SecondController.text.toString()));

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(
                          first1: first,
                          second1: second,
                        ),
                      ));
                },
                child: Text("Sum"))
          ],
        ),
      )),
    );
  }
}
