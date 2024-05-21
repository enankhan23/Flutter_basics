import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Form',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Stack(
            children: [
              Positioned(
                  bottom: 2,
                  left: -50,
                  child: Container(
                height: 300,
                width: 300,
                color: Colors.yellow,
              )),
              Positioned(
                  top: 50,
                  right: 70,
                  child: Container(
                height: 150,
                width: 150,
                color: Colors.red,
              )),
              Center(
                  child: Container(
                height: 50,
                width: 50,
                color: Colors.green,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
