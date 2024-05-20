import "package:flutter/material.dart";

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.all(10)),
                  overlayColor: WidgetStateProperty.all(Colors.black54),
                  elevation: WidgetStateProperty.all(50),
                  backgroundColor: WidgetStateProperty.all(Colors.yellow)),
              child: Text(
                'Press button',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      print('Like');
                    },
                    style: ButtonStyle(
                        padding: WidgetStateProperty.all(EdgeInsets.all(10)),
                        backgroundColor: WidgetStateProperty.all(
                            Theme.of(context).primaryColor),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)))),
                    child: Text(
                      'Press me',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )))
          ],
        ),
      ),
    );
  }
}
