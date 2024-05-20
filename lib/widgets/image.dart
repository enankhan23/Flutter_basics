import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Image'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 250,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(blurRadius: 30, color: Colors.grey, spreadRadius: 10)
            ],
            
            borderRadius: BorderRadius.circular(20),
            color: Colors.cyan,
          ),
          
        ),
      ),
    );
  }
}
