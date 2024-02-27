import 'package:flutter/material.dart';
import 'package:assignment_module_4/main.dart';

class Question65 extends StatefulWidget {
  @override
  State<Question65> createState() => _Question65State();
}

class _Question65State extends State<Question65> {
  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () async {
        _showExitDialog(context);
        return false;

      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Question 65"),
        ),
        body: Center(
          child: Text("Press the back button to show exit alert dialog"),
        ),
      ),
    );
  }

  void _showExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Are you sure you want to exit the application?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen(),));
              },
              child: Text("Exit App"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
          ],
        );
      },
    );
  }
}
