import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bottom Sheet',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Theme.of(context).primaryColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20),
                          topRight: Radius.circular(40))),
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text('Orange'),
                          subtitle: Text('Enan'),
                        ),
                        ListTile(
                          title: Text('Orange'),
                          subtitle: Text('Enan'),
                        ),
                        ListTile(
                          title: Text('Orange'),
                          subtitle: Text('Enan'),
                        ),
                        ListTile(
                          title: Text('Orange'),
                          subtitle: Text('Enan'),
                        ),
                      ],
                    );
                  });
            },
            child: Text('Show Bottom Sheet')),
      ),
    );
  }
}
