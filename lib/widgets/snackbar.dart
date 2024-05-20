import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Snackbar'), backgroundColor: Colors.deepPurple),
      body: Container(
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                    action: SnackBarAction(
                        label: 'Undo',
                        textColor: Colors.white,
                        onPressed: () {}),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    behavior: SnackBarBehavior.floating,
                    duration: const Duration(seconds: 2),
                    backgroundColor: Colors.red,
                    content: Text(
                      'What up biaatch',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ));
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text('Show Snackbar')),
        ),
      ),
    );
  }
}
