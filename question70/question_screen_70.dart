import 'package:assignment_module_4/question70/screens/audio_screen.dart';
import 'package:assignment_module_4/question70/screens/video_screen.dart';
import 'package:flutter/material.dart';

import '../question71/gallery.dart';



class Question23 extends StatefulWidget {
  const Question23({super.key});



  @override
  State<Question23> createState() => _Question23State();
}

class _Question23State extends State<Question23> {


  var _currentindex = 0;

  List<Widget> _screenlist = [

    audio(),
    Video1(),
    Gallery(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 70'),
      ),
      body: _screenlist[_currentindex],

      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.green,
        currentIndex: _currentindex,
        showUnselectedLabels: false,


        onTap: (value) {

          UpdateIteam(value);

        },

        items: [


          BottomNavigationBarItem(

              label: "audio",
              icon: Icon(Icons.audio_file)),

          BottomNavigationBarItem(

              label: "video",
              icon: Icon(Icons.video_call)),

          BottomNavigationBarItem(

              label: "gallery",
              icon: Icon(Icons.browse_gallery)),
        ],

      ),
    );
  }

  UpdateIteam(int value) {

    setState(() {

      _currentindex = value;
    });


  }


}




