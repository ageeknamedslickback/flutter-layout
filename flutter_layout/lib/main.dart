import 'package:flutter/material.dart';

import 'app_screens/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Layout UI widgets',
      // home: Home(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("Slickback Minitage"),
      //   ),
      //   body: getListView(),
      // ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Slickback Minitage"),
        ),
        body: getLongListView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Working...");
          },
          child: Icon(Icons.add),
          tooltip: "Add on more",
        ),
      ),
    ),
  );
}
