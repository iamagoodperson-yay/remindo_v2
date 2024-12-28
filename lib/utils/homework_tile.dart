import 'package:flutter/material.dart';
import 'dart:ffi';

class Importance {
  final int value;
  final Color color;

  const Importance(this.value, this.color);

  static const Importance low = Importance(0, Colors.green);
  static const Importance medium = Importance(1, Colors.yellow);
  static const Importance high = Importance(2, Colors.red);
}

class HomeworkTile extends StatelessWidget {

  final String title;
  final String description;
  final Duration duration;
  final DateTime dueDate;
  final Importance importance;

  const HomeworkTile({
    super.key, 
    required this.title, 
    required this.description, 
    required this.duration, 
    required this.dueDate, 
    required this.importance
  }); 


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: importance.color,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description
            ),
            const SizedBox(height: 4),
            Text(
              'Duration: '
              '${duration.inHours > 0 ? '${duration.inHours} h ' : ''}'
              '${duration.inMinutes.remainder(60)} min'
            ),
            Text(
              'Due Date: ${dueDate.year}-${dueDate.month.toString().padLeft(2, '0')}-${dueDate.day.toString().padLeft(2, '0')}'
            )
          ],
        ),
      ),
    );
  }
}