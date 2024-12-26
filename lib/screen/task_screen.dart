import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  bool changer = true;

  void turnOn() {
    setState(() {
      changer = !changer;
    });
  }

  String textChanger() {
      return changer ? "ON" : "OFF";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              iconSize: 100,
              color: Colors.yellow,
              icon: Icon(Icons.lightbulb_outline),
              isSelected: changer,
              selectedIcon: Icon(Icons.lightbulb),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: turnOn,
              child: Text(
                textChanger(),
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
