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
        //agar AspectRatio 1 raqam hight 2 with agar bcheke gawray bka awa awa drezhy pany nagoret
        //agar eshy nakrd awa ailgnment lagala bakar bena 
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 3/2,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Stack(
                      //clipBehavior: It determines whether the content will be clipped or not.
                      //overflow: It controls the children widgets, whether visible or clipped, when it's content overflowing outside the stack.
                      clipBehavior: Clip.none, // Allow overflow to be visible
                      children: <Widget>[
                        Container(
                          
                          color: Colors.black12,
                        ),
            
                        AspectRatio(
                          aspectRatio: 5/2,
                          child: Center(
                            child: Container(
                              width: 100,
                              height: 100,
                              color: Color.fromARGB(115, 218, 28, 28),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ClipOval(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            )
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
