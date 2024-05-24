import "package:flutter/material.dart";

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text('Whatsapp'),
          // foregroundColor: Colors.white,
          bottom: TabBar( 
            
            indicatorWeight: 10,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.chat),
                text: 'CHATS',
              ),
              Tab(
                icon: Icon(Icons.chat_bubble),
                text: 'STATUS',
              ),
              Tab(
                icon: Icon(Icons.call),
                text: 'CAll',
              ),
              // Tab(icon: Icon(Icons.chat), text: 'CHATS',),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Center(
                child: Text(
                  'CHATS',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'STATUS',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'CALLS',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
