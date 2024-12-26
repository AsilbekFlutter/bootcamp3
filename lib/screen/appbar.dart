import 'package:flutter/material.dart';

class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Title",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: BackButton(
          color: Colors.green,
        ),
        elevation: 8,
        toolbarHeight: 80,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width,
              MediaQuery.sizeOf(context).height / 5),
          child: Container(
            color: Colors.red,
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height / 5,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        elevation: 10,
        mini: false,
        child: Icon(Icons.edit, color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
    );
  }
}
