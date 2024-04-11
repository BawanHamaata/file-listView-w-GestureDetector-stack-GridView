import 'package:flutter/material.dart';

class bazna extends StatelessWidget {
  final String child;
  const bazna({required String this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Center(child: Text(child)),
        height: 100,
        width: 100,
        
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}