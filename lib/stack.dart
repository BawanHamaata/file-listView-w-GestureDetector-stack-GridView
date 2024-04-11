import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Widget'),
        ),
        body: Stack(
          //clipBehavior: It determines whether the content will be clipped or not.
          //overflow: It controls the children widgets, whether visible or clipped, when it's content overflowing outside the stack.
          clipBehavior: Clip.none, // Allow overflow to be visible
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.black12,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 50,
                height: 50,
                color: Color.fromARGB(115, 218, 28, 28),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidget(),
    );
  }
}
