import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class QuestionScreen66 extends StatefulWidget {
  const QuestionScreen66({Key? key}) : super(key: key);

  @override
  State<QuestionScreen66> createState() => _QuestionScreen66State();
}

class _QuestionScreen66State extends State<QuestionScreen66> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Question 66'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                var selectedDate = await showPicker(context);
                if (selectedDate != null) {
                  setState(() {
                    _selectedDate = selectedDate;
                  });
                }
              },
              child: Text('Show Date Picker Dialog'),
            ),
            SizedBox(height: 20),
            if (_selectedDate != null)
              Text(
                'Selected Date: ${DateFormat('yyyy-MM-dd').format(_selectedDate!)}',
                style: TextStyle(fontSize: 20),
              ),
          ],
        ),
      ),
    );
  }

  Future<DateTime?> showPicker(BuildContext context) async {
    return await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1947),
      lastDate: DateTime.now(),
    );
  }
}
