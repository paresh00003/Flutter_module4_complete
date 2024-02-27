import 'package:flutter/material.dart';



class QuestionScreen64 extends StatefulWidget {
  @override
  _QuestionScreen64State createState() => _QuestionScreen64State();
}

class _QuestionScreen64State extends State<QuestionScreen64> {
  String selectedCity = '';

  List<String> cities = [
    'Surat',
    'Ahemadabad',
    'Vadodara',
    'Rajkot',
    'Gandhinager',
    'Kutch',
    'Dwaraka',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 64'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () {
                _showCitySelectionDialog(context);


              },
              child: Text('Select City'),


            ),

            SizedBox(height: 20),

            Text(
              'Gujarat City: $selectedCity',
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
              itemCount: cities.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cities[index]),
                  onTap: () {
                    setState(() {
                      selectedCity = cities[index];
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
