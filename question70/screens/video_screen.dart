import 'package:flutter/material.dart';

import '../../question71/Newdata_dummy/camera1.dart';
import '../../question71/Newdata_dummy/facebook1.dart';




class Video1 extends StatelessWidget {
  const Video1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
          child: Column(


            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [



                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Video List",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),),
                  ),




                ],


              ),


              Expanded(

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(


                    crossAxisCount: 3,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,





                    children: [

                      InkWell(
                        child: Container(


                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),

                          child: Image.asset("assets/images/gallery.jpg"),
                        ),

                        onTap:(){

                          Navigator.push(context, MaterialPageRoute(builder: (context) => CameraScreen(),));


                        } ,
                      ),



                      InkWell(
                        child: Container(


                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),

                          child: Image.asset("assets/images/whatsapp.jpg"),
                        ),

                        onTap:(){

                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacebookScreen(),));


                        } ,
                      ),


                      InkWell(
                        child: Container(


                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),

                          child: Image.asset("assets/images/insta.jpg"),
                        ),

                        onTap:(){

                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacebookScreen(),));


                        } ,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text("Camera Video"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text("Whatsapp Video"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text("Instagram Video"),
                      )








                    ],
                  ),
                ),
              ),


            ],
          )
      ),
    );
  }
}



