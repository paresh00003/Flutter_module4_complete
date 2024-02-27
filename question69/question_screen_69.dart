import 'package:assignment_module_4/main.dart';
import 'package:flutter/material.dart';

import 'model/mail_content.dart';
import 'model/mail_generator.dart';




class QuestionScreen69 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Gmail'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key ?key, this.title}) : super(key: key);

  final  String ? title;
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  var drawerIcons = [
    Icon(Icons.move_to_inbox),
    Icon(Icons.inbox),
    Icon(Icons.people),
    Icon(Icons.local_offer),
    Icon(Icons.star),
    Icon(Icons.access_time),
    Icon(Icons.label),
    Icon(Icons.send),
    Icon(Icons.send),
    Icon(Icons.note),
    Icon(Icons.mail),
    Icon(Icons.error),
    Icon(Icons.delete),
    Icon(Icons.label),
    Icon(Icons.label),
    Icon(Icons.settings),
    Icon(Icons.help),
  ];

  var drawerText = [
    "All inboxes",
    "Primary",
    "Social",
    "Promotions",
    "Starred",
    "Snoozed",
    "Important",
    "Sent",
    "Outbox",
    "Drafts",
    "All mail",
    "Spam",
    "Bin",
    "Sent",
    "Trash",
    "Settings",
    "Help & feedback"
  ];

  var titleBarContent = "Primary";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getMailAppBar(),
      drawer: _getMailAccountDrawerr(),
      body: _mailListViewGenerator(),
      floatingActionButton: _getMailFloatingActionButton(),
    );
  }

  FloatingActionButton _getMailFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ComposeEmailPageState()),
        );
      },
      child: Icon(Icons.edit),
      backgroundColor: Colors.red,
    );
  }

  AppBar _getMailAppBar() {
    return AppBar(
      backgroundColor: Colors.red,
      title: Row(
        children: [

         Padding(
           padding: EdgeInsets.only(right: 50),
           child: IconButton(onPressed: () {

             Navigator.push(context, MaterialPageRoute(builder: (context) => Module4App(),));

           }, icon: Icon(Icons.arrow_back,
           size: 25,)),
         ),

          new Text(
          titleBarContent,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
          ),
        ),

        ]
      ),

      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 13.0),
          child: Icon(
            Icons.search,
            size: 25.0,
          ),
        ),


      ],


    );
  }

  Drawer _getMailAccountDrawerr() {
    Text email = new Text(
      "chauhanparesh@gmail.com",
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
    );

    Text name = new Text(
      "chauhan Paresh",
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
    );

    return Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              accountName: name,
              accountEmail: email,
              currentAccountPicture: Icon(
                Icons.account_circle,
                size: 50.0,
                color: Colors.white,
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                  padding: EdgeInsets.only(top:0.0),
                  itemCount: drawerText.length,
                  itemBuilder: (context, position) {
                    return ListTile(
                      leading: drawerIcons[position],
                      title: Text(drawerText[position],
                          style: TextStyle(fontSize: 15.0)),
                      onTap: () {
                        this.setState(() {
                          titleBarContent = drawerText[position];
                        });
                        Navigator.pop(context);
                      },
                    );
                  }),
            )
          ],
        ));
  }

  Widget _mailListViewGenerator() {
    return ListView.builder(
        itemCount: MailGenerator.mailListLength,
        itemBuilder: (context, position) {
          MailContent mailContent = MailGenerator.getMailContent(position);
          return Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: 14.0, right: 14.0, top: 5.0, bottom: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.account_circle,
                        size: 55.0,
                        color: Colors.red,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    mailContent.sender,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black87,
                                        fontSize: 17.0),
                                  ),
                                  Text(
                                    mailContent.time,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                        fontSize: 13.5),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        mailContent.subject,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                            fontSize: 15.5),
                                      ),
                                      Text(
                                        mailContent.message,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                            fontSize: 15.5),
                                      )
                                    ],
                                  ),
                                  Icon(Icons.star_border, size: 25.0),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
              ]
          );
        });
  }
}

class ComposeEmailPageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Icon(Icons.arrow_back, color: Colors.white, size: 25.0),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          title: new Text(
            "Compose",
            style: TextStyle(
              color: Colors.white,
              fontSize: 21.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 13.0),
              child: Icon(
                Icons.attachment,
                size: 25.0,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 13.0),
              child: Icon(
                Icons.send,
                size: 23.0,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 13.0),
              child: Icon(
                Icons.more_vert,
                size: 25.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            ListTile(
              title: TextField(
                  decoration: InputDecoration(
                    labelText: "From",
                    border: InputBorder.none,
                    labelStyle: TextStyle(color: Colors.black54, fontSize: 18.0),
                  )),
              trailing: Icon(Icons.keyboard_arrow_down),
            ),
            Divider(),
            ListTile(
              title: TextField(
                  decoration: InputDecoration(
                      labelText: "To",
                      border: InputBorder.none,
                      labelStyle:
                      TextStyle(color: Colors.black54, fontSize: 18.0))),
              trailing: Icon(Icons.keyboard_arrow_down),
            ),
            Divider(),
            ListTile(
              title: TextField(
                  decoration: InputDecoration(
                      hintText: "Subject",
                      border: InputBorder.none,
                      hintStyle:
                      TextStyle(color: Colors.black54, fontSize: 18.0))),
            ),
            Divider(),
            Expanded(
              flex: 4,
              child: ListTile(
                title: TextField(
                    decoration: InputDecoration(
                      hintText: "Compose Email",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.black54, fontSize: 18.0),
                    )),
              ),
            ),
            Divider(),
          ],
        ));
  }
}