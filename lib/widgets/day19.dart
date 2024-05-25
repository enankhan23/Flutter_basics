import 'package:flutter/material.dart';

class Day19 extends StatefulWidget {
  const Day19({super.key});

  @override
  State<Day19> createState() => _Day19State();
}

class _Day19State extends State<Day19> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 345,
                  // color: Colors.yellow,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                              // color: Colors.red,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRai5HVAj5oM4kTkWHXc8LVnajMEEfhCiPnfoN_nhGw9g&s'))),
                          height: 295,
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 24,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT21aqdsy-6x8E8y7wCJt2luqYWwtw-2G_ojG-agavv3w&s'),
                          )),
                    ],
                  ),
                )
              ],
            ),
            Container(
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Madrid City Tour for Designers',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'This is a random description of the topic',
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(10),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    rowIconText('20', Icons.favorite_rounded),
                    rowIconText('33', Icons.upload),
                    rowIconText('44', Icons.message),
                    rowIconText('295', Icons.face),
                  ],
                )),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typese."),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(icon),
      ],
    );
  }
}
