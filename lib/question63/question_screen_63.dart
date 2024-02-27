
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: QuestionScreen63(),
    );
  }
}

class QuestionScreen63 extends StatefulWidget {
  const QuestionScreen63({super.key});



  @override
  State<QuestionScreen63> createState() => _QuestionScreen63State();
}

class _QuestionScreen63State extends State<QuestionScreen63> {

  void showToast(BuildContext context, String message,Color backgroundColor) {
    Toast.show(
      message,
      context,
      duration: Toast.lengthLong,
      gravity: Toast.top,
      backgroundColor: backgroundColor,
      textStyle: TextStyle(color: Colors.black),




    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 63'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [


            Container(

              margin: EdgeInsets.only(top: 200),
              child: ElevatedButton(onPressed: () {

                ToastClick(context);



              }, child: Text("Toast")),
            ),

          ],
        )
      ),
    );
  }

  Future<void> ToastClick(BuildContext context) async {

    await showDialog(context: context, builder: (context) {

      return AlertDialog(

        title: Text("Choose An Option"),
        content: Text("Select any One"),
        actions: [

          ElevatedButton(onPressed: () {


                showToast(context, 'Positive', Colors.green);


                Navigator.pop(context);

          }, child: Text("Positive")),



          ElevatedButton(onPressed: () {

            showToast(context, "Negative",Colors.red);


            Navigator.pop(context);


          }, child: Text("Negative")),


          ElevatedButton(onPressed: () {

            showToast(context, "Nutural",Colors.yellow);



            Navigator.pop(context);

          }, child: Text("Nutural")),


        ],


      );

    },);


  }
}












