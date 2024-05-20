import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Rows and Columns'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // direction: Axis.vertical,
          // alignment: WrapAlignment.spaceEvenly,
          children: [
            Container(height: 60, width: 60, color: Colors.red,),
            Container(height: 60, width: 60, color: Colors.greenAccent,),
            Container(height: 60, width: 60, color: Colors.red,),
            Container(height: 60, width: 60, color: Colors.green,)
          ],
        ),
      ),
    );
  }
}
