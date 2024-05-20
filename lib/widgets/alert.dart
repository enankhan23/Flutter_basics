import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showMyDialog(context);
            },
            child: Text('Show Alert')),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          title: Text('This is an Alert'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('This is a demo'),
                Text('This is ENan'),
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: () {}, child: Text('Approve')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel')),
          ],
        );
      });
}
