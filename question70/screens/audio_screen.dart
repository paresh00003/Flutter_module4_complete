import 'package:flutter/material.dart';







class audio extends StatelessWidget {
  const audio({super.key});

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
                    child: Text(
                      "Audios",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),

                ],
              ),

              Expanded(
                child: ListView(

                  children: [

                    ListTile(

                      leading: CircleAvatar (

                        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRppRPi-xD5fvXQ61tsZs2WH5sjkW7M4nM2Uw&usqp=CAU"),


                      ),

                      title: Text("Bhole Shankar "),

                      subtitle: Text("Hanshraj Raghuwanshi"),

                      trailing: Text("1/1/2020"),


                    ),
                    ListTile(

                      leading: CircleAvatar (

                        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRppRPi-xD5fvXQ61tsZs2WH5sjkW7M4nM2Uw&usqp=CAU"),


                      ),

                      title: Text("Narayan Mil Jayega "),

                      subtitle: Text("Jubin Nautiyal"),

                      trailing: Text("2/2/2022"),


                    ),
                    ListTile(

                      leading: CircleAvatar (

                        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRppRPi-xD5fvXQ61tsZs2WH5sjkW7M4nM2Uw&usqp=CAU"),


                      ),

                      title: Text("Ganesh Aarti"),

                      subtitle: Text("Shankar Mahadevan"),

                      trailing: Text("12/12/2010"),


                    ),
                    ListTile(

                      leading: CircleAvatar (

                        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRppRPi-xD5fvXQ61tsZs2WH5sjkW7M4nM2Uw&usqp=CAU"),


                      ),

                      title: Text("Ganga Aarti"),

                      subtitle: Text("Hanshraj Raghuwanshi"),

                      trailing: Text("1/1/2018"),


                    ),




                  ],
                ),
              )

            ],



          )),
    );
  }
}
