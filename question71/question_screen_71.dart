
import 'package:assignment_module_4/question71/audio.dart';
import 'package:assignment_module_4/question71/gallery.dart';
import 'package:assignment_module_4/question71/video.dart';
import 'package:flutter/material.dart';


class QuestionScreen71 extends StatefulWidget {
  const QuestionScreen71({super.key});

  @override
  State<QuestionScreen71> createState() => _QuestionScreen71State();
}

class _QuestionScreen71State extends State<QuestionScreen71> {

  var _selecetedindex = 0;

  List<Widget> _WidgetList = [

    audio(),
    Video1(),
    Gallery(),

  ];


  void _onItemTap(int index, BuildContext context) {
    setState(() {
      _selecetedindex = index;
      Navigator.pop(context);
    });
  }


  List<String> _titleList = [
    'Audio',
    'Video',
    'Gallery',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 71'),
      ),
      drawer: Padding(
        padding: const EdgeInsets.all(20),
        child: Drawer(

          child: ListView(

            children: [

              DrawerHeader(



                decoration: BoxDecoration(

                  color: Colors.green.shade300,

                ),





                child: Column(

                  children: [

                    Expanded(

                      child: ListView(

                        children: [

                          ListTile(


                            title: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                image: DecorationImage(
                                        fit: BoxFit.cover,
                                    image: NetworkImage('https://png.pngtree.com/background/20230528/original/pngtree-an-orange-background-with-notes-for-music-picture-image_2781335.jpg')
                                ),
                              ),
                            ),


                          ),

                          SizedBox(height: 5,),

                          Padding(
                            padding: EdgeInsets.only(left: 20,top: 5),
                            child: Text("Music",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),),
                          ),


                          Padding(
                            padding: EdgeInsets.only(left: 20,top: 5),
                            child:Text("Bhajan PlayList",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),),
                          ),


                        ],
                      ),
                    ),
                  ],
                ),

              ),


              ListTile(

                selectedColor: Colors.red,
                selected: _selecetedindex==0,


                onTap: (){

                   _onItemTap(0, context);
                },

                title: Text("Audio"),

              ),

              Divider(
                height: 2,thickness: 1,
              ),

              ListTile(
                selectedColor: Colors.cyan,
                selected: _selecetedindex==1,
                onTap: () {
                  _onItemTap(1, context);
                },

                title: Text("Video"),
              ),

              Divider(
                height: 2,thickness: 1,
              ),

              ListTile(

                selectedColor: Colors.green,
                selected: _selecetedindex==2,

                onTap: () {
                  _onItemTap(2, context);
                },

                title: Text("Gallery"),
              ),

              Divider(
                height: 2,thickness: 1,
              ),

            ],
          ),
        ),
      ),
      body: _WidgetList[_selecetedindex],
    );
  }
}

