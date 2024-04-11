import 'package:flutter/material.dart';
// bo drwst krdni function paternaka sarata stl bnwsa bo drwst krdni weget
//pashan my mtwiget agory bo nawe file ka super key bsrawa w run app 
// pashan retun aw wiget bka atawet

class lakesha extends StatelessWidget {
  final String child;

  const lakesha({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(8.0),
    child: Container(
      height: 400,
      color: Colors.deepOrange,
      child: Center(child: Text(child,style: TextStyle(fontSize: 40.0,),)),
    ),);
  }
}