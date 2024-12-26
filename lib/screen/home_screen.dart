import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLike = true;

  void changeLikeValue() {
    setState(() {
      isLike = !isLike;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: changeLikeValue,
          color: Colors.red,
          iconSize: 50,
          icon: Icon(Icons.favorite_outline),
          selectedIcon: Icon(Icons.favorite),
          isSelected: isLike,
        ),
      ),
    );
  }
}
