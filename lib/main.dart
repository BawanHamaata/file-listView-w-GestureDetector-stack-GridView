import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        body: Column(
          children: [
            Center(
              child: Container(
                width: 100,
                height: 100,
                child: Center(child: Text("hello")),
                
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),
          ],
        ),
      ),
    );

}
}