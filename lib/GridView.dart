import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('GridView Example')),
          backgroundColor: Colors.blue,

        ),
        body: GridView.builder(
          itemCount: 10, // Total number of items in the GridView
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns in the grid
          ),
          itemBuilder: (context, index) { // Callback function to build each item
            return Padding(
              padding: const EdgeInsets.all(8.0), // Padding around each item
              child: Container(
                height: 150, // Height of each item
                width: 150, // Width of each item
                color: Colors.blue, // Background color of each item
              ),
            );
          },
        ),
      ),
    );
  }
}
