import 'package:flutter/material.dart';

class QuestionScreen78 extends StatefulWidget {
  @override
  _QuestionScreen78State createState() => _QuestionScreen78State();
}

class _QuestionScreen78State extends State<QuestionScreen78> {
  List<String> items = [];

  TextEditingController _editController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question 78"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              _showItemDialog(items[index]);
            },
            onDoubleTap: () {
              _showContextMenu(context, index);
            },
            child: Card(
              child: ListTile(
                title: Text(items[index]),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addItem(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _addItem(BuildContext context) {
    TextEditingController nameController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add Name"),
          content: TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: "Enter Name"),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                String newName = nameController.text;
                if (newName.isNotEmpty) {
                  setState(() {
                    items.add(newName);
                  });
                  Navigator.of(context).pop();
                }
              },
              child: Text("Add"),
            ),
          ],
        );
      },
    );
  }

  void _showItemDialog(String itemName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Item Details"),
          content: Text("View Item ${itemName}"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  void _showContextMenu(BuildContext context, int index) {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(100.0, 100.0, 0.0, 100.0),
      items: [
        PopupMenuItem(
          child: Text("Edit Item"),
          value: "edit",
        ),
        PopupMenuItem(
          child: Text("Delete Item"),
          value: "delete",
        ),
        PopupMenuItem(
          child: Text("Exit"),
          value: "exit",
        ),
      ],
    ).then((value) {
      if (value == "edit") {
        _editItem(index);
      } else if (value == "delete") {
        _confirmDeleteItem(index);
      }
    });
  }

  void _editItem(int index) {

    _editController.text = items[index];

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Edit Item"),
          content: TextField(
            controller: _editController,
            decoration: InputDecoration(labelText: "Enter New Name"),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                String updatedName = _editController.text;
                if (updatedName.isNotEmpty) {
                  setState(() {
                    items[index] = updatedName;
                  });
                  Navigator.pop(context);
                }
              },
              child: Text("Update"),
            ),
          ],
        );
      },
    );
  }

  void _confirmDeleteItem(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm Delete"),
          content: Text("Are you sure you want to delete ${items[index]}?"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("No"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  items.removeAt(index);
                });
                Navigator.pop(context);
              },
              child: Text("Yes"),
            ),
          ],
        );
      },
    );
  }
}
