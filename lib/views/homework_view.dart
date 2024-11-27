import 'package:flutter/material.dart';

class HomeworkView extends StatefulWidget {
  const HomeworkView({super.key});

  @override
  State<HomeworkView> createState() => _HomeworkViewState();
}

class _HomeworkViewState extends State<HomeworkView> {
  void _adObj() {}
  void _clear() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FilledButton(
          onPressed: _adObj,
          style: FilledButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(100),
          ),
          child: const Text("Add entry"),
        ),
        FilledButton(
          onPressed: _clear,
          child: const Text("Clear"),
        ),
      ],
    );
  }
}
