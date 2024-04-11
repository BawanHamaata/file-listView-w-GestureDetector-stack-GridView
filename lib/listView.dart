
import 'package:conterner/lakesha.dart';
import 'package:conterner/bazna.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';






void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
    final List _List=["post 1","post 2","post 3","post 4"];
    final List _List_basna=["post 1","post 2","post 3","post 4","post 3","post 3","post 3",];


  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Instagram"),
        ),
        body:Column(
          children: [
            Container(
              height: 100,
              child: ListView.builder(itemCount: _List_basna.length,
              scrollDirection: Axis.horizontal,               
               itemBuilder: (context, index) {
                
              return bazna(child: _List_basna[index],);
              
                          },),
            ),


            // post part
            //katek list akata columek pewsta hight bo dyary kat yan beka naw expanded
            Expanded(
              child: ListView.builder( 
              itemCount: _List.length,
              itemBuilder: (context, index) {
                return lakesha(child: _List[index],);
              },),
            ),
          ],
        )
        
        

      ),
    );
    
  }
}
