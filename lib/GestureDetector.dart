import 'package:flutter/material.dart';
// bo tab krdin lasar sht aw wigeit ka akata sary atwani tab bkait
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
int _numberOFtab=0;

class _MyAppState extends State<MyApp> {
 void incress(){
  setState(() {
                  _numberOFtab++;
                });
  
} 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('gesturedetector')),
          backgroundColor: Colors.blue,

        ),
        body:Column(
          children: [
            Container(
              child: Text("number "+_numberOFtab.toString() +" incress"),
            ),
             GestureDetector(
              onTap: incress,
               child: Container(
                child: Text("tab here"),
                color: Colors.amber,
                           ),
             ),
          ],
        )
      ),
    );
  }
}
