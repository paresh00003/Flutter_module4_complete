import 'package:flutter/material.dart';


class QuestionScreen68 extends StatefulWidget {
  @override
  _QuestionScreen68State createState() => _QuestionScreen68State();
}

class _QuestionScreen68State extends State<QuestionScreen68 > {

  List<String> items = ["Paresh", "Nikhil", "Mitul", "Denish", "Jay"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 68'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(items[index]),

            trailing: PopupMenuButton(
              icon: Icon(Icons.more_horiz),
              onSelected: (value) {
                switch (value) {
                  case 'Edit':
                    _editItem(index);
                    break;
                  case 'View':

                    _viewItem(index);

                    break;
                  case 'Delete':

                    _deleteItem(index);
                    break;

                }
              },
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: 'Edit',
                    child: Text('Edit'),
                  ),
                  PopupMenuItem(
                    value: 'View',
                    child: Text('View'),
                  ),
                  PopupMenuItem(
                    value: 'Delete',
                    child: Text('Delete'),
                  ),

                ];
              },
            ),

          );
        },
      ),
    );
  }

  void _editItem(int index) {

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Edit Item"),
          content: TextField(

            keyboardType: TextInputType.text,
            onChanged: (value) {
              setState(() {
                items[index] = value;
              });
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void _viewItem(int index) {

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("View Item"),
          content: Text("Flutter Student ${items[index]}"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _deleteItem(int index) {

    setState(() {
      items.removeAt(index);
    });
  }
}
