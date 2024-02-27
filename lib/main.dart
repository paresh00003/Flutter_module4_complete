import 'dart:ui';

import 'package:assignment_module_4/question61/question_screen_61.dart';
import 'package:assignment_module_4/question62/question_screen_62.dart';
import 'package:assignment_module_4/question63/question_screen_63.dart';
import 'package:assignment_module_4/question64/question_screen_64.dart';
import 'package:assignment_module_4/question65/question_screen_65.dart';
import 'package:assignment_module_4/question66/question_screen_66.dart';
import 'package:assignment_module_4/question67/question_screen_67.dart';
import 'package:assignment_module_4/question68/question_screen_68.dart';
import 'package:assignment_module_4/question69/question_screen_69.dart';
import 'package:assignment_module_4/question70/question_screen_70.dart';
import 'package:assignment_module_4/question71/question_screen_71.dart';
import 'package:assignment_module_4/question72/question_screen_72.dart';
import 'package:assignment_module_4/question73/question_screen_73.dart';
import 'package:assignment_module_4/question74/question_screen_74.dart';
import 'package:assignment_module_4/question76/question_screen_76.dart';
import 'package:assignment_module_4/question78/question_screen_78.dart';
import 'package:flutter/material.dart';

import 'model/question.dart';

void main() => runApp(Module4App());

class Module4App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Module - 4',
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Question> questionlist = [
    Question(
        number: 61,
        question:
            'Create custom toolbar as per given below design Create toolbar with spinner and search functionality'),
    Question(
        number: 62,
        question:
            "Write a code to display simple alert dialog with title, description and icon when button is clicked"),
    Question(
        number: 63,
        question:
            "Write a code to display alert dialog with positive, negative and neutral button and display toast respectively user's choice"),
    Question(
        number: 64,
        question:
            "Write a code to display alert dialog with list of cities and Single choice selection display selected city in TextView"),
    Question(
        number: 65,
        question:
            "open alert dialog when user want to exit from the application"),
    Question(
        number: 66,
        question: "Write a code to select Date on button's click event"),
    Question(
        number: 67,
        question:
            "Write a code to display profile and logout option in options menu"),
    Question(
        number: 68,
        question:
            "Write a code to display edit, view, delete options with context menuin listview and also perform respective operation on user's choice"),
    Question(
        number: 69,
        question:
            "Create an application like gmail and display Screens according to user selection and design each page with dummy data"),
    Question(
        number: 70,
        question:
            "Create an application with bottom navigation with 3 tabs Gallery, audio and video and design each page with dummy data"),
    Question(
        number: 71,
        question:
            "Create an application with Navigation Drawer with 3 tabs Gallery, audio and video and design each page with dummy data"),
    Question(
        number: 72,
        question:
            " create a Phone call App when user first time open the app it will automatically generate one dialog which has two option allow, deny if click on allow permission is grant in settings"),
    Question(
        number: 73,
        question: "Write a code to display Splash Screen using Activity"),
    Question(
        number: 74,
        question:
            "Write a code to redirect user from one activity to another when button click."),
    Question(
        number: 75,
        question:
            "Create an Android Application which Manage Activity Lifecycle Stages and Showing Toast with Performing Different Stages."),
    Question(
        number: 76,
        question:
            "Create an Application to take input two numbers from users and when user press button then display sum of those values of next Activity"),
    Question(
        number: 77, question: "Call via urllauncher, Send Sms via urllauncher"),
    Question(
        number: 78,
        question:
            "Write a program to add name from the text view and  insert into the listview. If you click on the listview then name "
            "should be show in thedialog box. When user press for 2 seconds on particular List item thenopen Context "
            "Menu (Delete Item, Edit Item, Exit). If user click onDelete Item then Open one Alert Dialog with message "
            "(“Are you surewant to delete Item?”) and yes, no button if user press yes button thenremove item from list."
            " (Click a DELETE button, it gives a confirm box)If user click on Edit item then selected item display on EditText "
            "andagain user click on button then this (updated item) should be replacewith old item "),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Module - 4'),
        ),
        body: ListView.builder(
          itemCount: questionlist.length,
          itemBuilder: (context, index) {
            Question question = questionlist[index];

            return Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: ListTile(
                  onTap: () {
                    Onitemclicked(question.number, context);
                  },
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.green,
                    child: Text(
                      "${question.number}",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  title: Text("${question.question}"),
                ),
              ),
            );
          },
        ));
  }

  void Onitemclicked(int questionnumber, BuildContext context) {
    switch (questionnumber) {
      case 61 :

      Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionScreen61(),));

        break;

      case 62:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuestionScreen62(),
            ));

        break;

      case 63:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuestionScreen63(),
            ));
        break;

      case 64:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuestionScreen64(),
            ));

        break;

      case 65:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question65(),
            ));

        break;

      case 66:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuestionScreen66(),
            ));

      case 67:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuestionScreen67(),
            ));

        break;

      case 68:

        Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionScreen68(),));

        break;

      case 69:

        Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionScreen69(),));

        break;
      case 70:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question23(

              ),
            ));

        break;

      case 71:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuestionScreen71(),
            ));
        break;

      case 72:

        Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionScreen72(),));

        break;


      case 73:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SplashScreen(),
            ));

      case 74:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuestionScreen74(),
            ));

      case 76:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuestionScreen76(),
            ));

        break;


      case 78 :

        Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionScreen78(),));

        break;
    }
  }
}
