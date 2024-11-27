// hi ted ~ jaron
import 'package:flutter/material.dart';
import 'package:remindo_v2/views/homework_view.dart';
import 'package:remindo_v2/views/notifications_view.dart';
import 'package:remindo_v2/views/settings_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Remindo v2",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          primary: Colors.green,
          secondary: Colors.indigo,
        ),
      ),
      home: const MyScaffold(),
    );
  }
}

class MyScaffold extends StatefulWidget {
  const MyScaffold({super.key});

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  static const List<Widget> _views = <Widget>[
    SafeArea(child: Center(child: HomeworkView())),
    SafeArea(child: Center(child: NotificationsView())),
    SafeArea(child: Center(child: SettingsView())),
  ];
  int currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  Text _returnAppBarName() {
    return currentIndex == 0 ? const Text("Homework") : currentIndex == 1 ? const Text("Reminders") : currentIndex == 2 ? const Text("Settings") : const Text("Placeholder");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _returnAppBarName(),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: IndexedStack(
        index: currentIndex,
        children: _views,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        iconSize: 30,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_rounded), label: "Homework"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_rounded), label: "Reminders"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}