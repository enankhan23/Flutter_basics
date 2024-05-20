import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container and Sized box'),backgroundColor: Colors.deepPurple,),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(0),
          height: 250,
          width: 250,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(35),
              boxShadow: [BoxShadow(blurRadius: 20, spreadRadius: 10, color:Colors.black)]
            ),
          child: Center(child: Container(color: Colors.red,margin: EdgeInsets.all(30),)
                //Text('Hello', style: TextStyle(fontSize: 20),)
          ),
        ),
      )
    );
  }
}