import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    //color: Colors.red,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/jPsLqiYGSofU4s6BjrxnefMfabb.jpg'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Enan Abdulla'),
                            Text('adas@gmail.com')
                          ],
                        )
                      ],
                    ),
                  )),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text('My files'),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('Shared with me'),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('Starred'),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Trash'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ],
          ),
          color: Theme.of(context).primaryColor,
        ),
      ),
      appBar: AppBar(
          title: Text('Drawer Widget'), backgroundColor: Colors.deepPurple),
      body: Container(
        child: Center(
          child: Text('hey there'),
        ),
      ),
    );
  }
}
