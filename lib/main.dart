import 'package:flutter/material.dart';
import 'page/wisata.dart';
void main(){
  runApp(
    MaterialApp(
      home: HomePage()
    )
  );
}

class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.orange[800],
        leading: Icon(Icons.home),
        title: Center(
          child: Text(
            "Tugas 7 Flutter"
          ),
        ),
        actions: [
          Icon(Icons.search)
        ],
      ),
      body: Wisata(),
    );
  }
}