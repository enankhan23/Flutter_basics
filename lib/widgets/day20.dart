import 'package:flutter/material.dart';

class Day20 extends StatelessWidget {
  const Day20({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        // centerTitle: true,
        title: Text(
          'wanda.s',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 180,
              // color: Colors.red,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 170,
                    // color: Colors.purple,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT21aqdsy-6x8E8y7wCJt2luqYWwtw-2G_ojG-agavv3w&s'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Wanda S.',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Photographer/NewYork',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    // color: Colors.orange,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              profileDetails('150', 'Posts'),
                              profileDetails('5k', 'Followers'),
                              profileDetails('100', 'Following'),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Container(
                                    height: 50,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Follow',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                                Colors.blue),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue, width: 2),
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.arrow_downward,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            Container(
              height: 100,
              // color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://img.freepik.com/free-photo/cloud-sky-twilight-times_74190-4017.jpg',
                                ),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                            // color: Colors.orange
                            ),
                      ),
                      Text('Title'),
                    ],
                  );
                },
              ),
            ),
            Divider(),
            Container(
              height: 80,
              // color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  VerticalDivider(
                    thickness: 2,
                  ),
                  Text(
                    'Site',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  VerticalDivider(
                    thickness: 2,
                  ),
                  Text(
                    'Phone',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Divider(),
            Expanded(
                child: Container(
              // color: Colors.yellow,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://imgb.srgcdn.com/XAngqLO0yDwnhHrfM9ul.jpg?width=1024',
                              ),
                              fit: BoxFit.cover),
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.all(5),
                      height: 100,
                      width: 100,
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }

  Widget profileDetails(String tex1, tex2) {
    return Column(
      children: [
        Text(
          tex1,
          style: TextStyle(fontSize: 24),
        ),
        Text(
          tex2,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
