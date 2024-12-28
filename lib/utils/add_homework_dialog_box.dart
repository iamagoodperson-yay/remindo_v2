import 'package:flutter/material.dart';

class AddHomeworkDialogBox extends StatefulWidget {
  const AddHomeworkDialogBox({super.key});

  @override
   State<AddHomeworkDialogBox> createState() => _AddHomeworkDialogBoxState();
}

class _AddHomeworkDialogBoxState extends State<AddHomeworkDialogBox> {
  int importance = 0;

  @override
  Widget build(BuildContext context) {

    return AlertDialog(
      title: const Text(
          'Add Homework',
          style: TextStyle(
          ),
        ),
      content: SizedBox(
        height: 400,
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Title:',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Description:',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Duration:',
              ),
            ),
            OutlinedButton(
              onPressed: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 365)),
                );
                if (pickedDate != null) {
                }
              },
              child: const Text('Pick a date'),
            ),
            Row(
              children: [
                const Text('Importance: '),
                DropdownButton<int>(
                  value: importance,
                  items: const [
                    DropdownMenuItem(
                      value: 0,
                      child: Text('Low'),
                    ),
                    DropdownMenuItem(
                      value: 1,
                      child: Text('Medium'),
                    ),
                    DropdownMenuItem(
                      value: 2,
                      child: Text('High'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      importance = value!;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}