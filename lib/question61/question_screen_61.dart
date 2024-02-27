import 'package:assignment_module_4/question61/screens/screen1.dart';
import 'package:assignment_module_4/question61/screens/screen2.dart';
import 'package:assignment_module_4/question61/screens/screen3.dart';
import 'package:flutter/material.dart';



class QuestionScreen61 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(

        appBar: AppBar(
          title: Text('Question - 60'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Screen1(),
                      ));
                    },
                    child: Text('Page - 1')),
                SizedBox(height: 10,),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Screen2(),
                      ));
                    },
                    child: Text('Page - 2')),
                SizedBox(height: 10,),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Screen3(),
                      ));
                    },
                    child: Text('Page - 3')),

              ],
            )
        ),
      ),
    );
  }
}
