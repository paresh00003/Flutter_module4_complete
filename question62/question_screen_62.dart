import 'package:flutter/material.dart';



class QuestionScreen62 extends StatefulWidget {
  @override
  _QuestionScreen62State createState() => _QuestionScreen62State();
}

class _QuestionScreen62State extends State<QuestionScreen62> {
  String selectedcollege = '';

  List<String> colleges = [
    'J.Z.Shah',
    'R.V.Patel',
    'D.R.B',
    'K.P.Commerce',
    'Bhagwan Mahavir ',
    'Dharuka',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 62'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () {
                _showCitySelectionDialog(context);


              },
              child: Text('Select College'),


            ),

            SizedBox(height: 20),

            Text(
              'Select College: $selectedcollege',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),



      ),
    );
  }

  void _showCitySelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select a City'),
          content: Container(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: colleges.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(colleges[index]),
                  onTap: () {
                    setState(() {
                      selectedcollege = colleges[index];
                    });
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),


          actions: [

            ElevatedButton(onPressed: (){

              Navigator.pop(context);

            }, child: Text("Cancel")),
          ],
        );
      },
    );
  }
}
