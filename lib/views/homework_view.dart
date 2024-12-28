import 'package:flutter/material.dart';
import 'package:remindo_v2/utils/add_homework_dialog_box.dart';
import 'package:remindo_v2/utils/homework_tile.dart';

class HomeworkView extends StatefulWidget {
  const HomeworkView({super.key});

  @override
  State<HomeworkView> createState() => _HomeworkViewState();
}

class _HomeworkViewState extends State<HomeworkView> {

  List homeworkList = [
    ['Math Homework', 'Complete exercises 1 to 10', DateTime.parse('2023-10-10'), const Duration(minutes: 20), Importance.high],
    ['Science Project', 'Prepare the volcano model', DateTime.parse('2023-10-15'), const Duration(minutes: 40), Importance.medium],
    ['History Essay', 'Write an essay on World War II', DateTime.parse('2023-10-20'), const Duration(hours: 1, minutes: 30), Importance.low],
  ];

  void addHomework() {
    showDialog(
      context: context, 
      builder: (context) {
        return AddHomeworkDialogBox();
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: addHomework,
              child: const Text('Add Homework'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: homeworkList.length,
              itemBuilder: (context, index) {
                return HomeworkTile(
                  title: homeworkList[index][0],
                  description: homeworkList[index][1],
                  dueDate: homeworkList[index][2],
                  duration: homeworkList[index][3],
                  importance: homeworkList[index][4],
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Next'),
          ),
        ]
      )
    );
  }
}