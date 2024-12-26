import 'package:flutter/material.dart';

class Gesture extends StatefulWidget {
  const Gesture({super.key});

  @override
  State<Gesture> createState() => _GestureState();
}

class _GestureState extends State<Gesture> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      if(counter>0) {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter: $counter", style: TextStyle(fontSize: 30),),
            SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: increment,
                  icon: Icon(Icons.add),
                ),
                IconButton(
                  onPressed: decrement,
                  icon: Icon(Icons.remove),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
