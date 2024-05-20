import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['Orange', 'Apple', 'Mango', 'Banana'];
  Map fruits_person = {
    'fruits': ['Orange', 'Apple', 'Mango', 'Banana'],
    'names': ['sdadas', 'sade', 'Madsdno', 'Basdna']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and Grid'),
        backgroundColor: Colors.red,
        elevation: 10,
      ),
      body: Container(
        // child: ListView.builder(
        //   itemCount: fruits.length,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: ListTile(
        //         onTap: () {
        //           print((fruits_person['fruits'][index]));
        //         },
        //         leading: Icon(Icons.person),
        //         title: Text(fruits_person['fruits'][index]),
        //         subtitle: Text(fruits_person['names'][index]),
        //       ),
        //     );
        //   },
        // ),
        //     child: GridView(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 3,
        //       crossAxisSpacing: 20,
        //       mainAxisSpacing: 30,
        //       childAspectRatio: 16 / 9),
        //   children: [
        //     Card(
        //       child: Center(child: Text('Crud')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Crud')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Crud')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Crud')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Crud')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Crud')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Crud')),
        //     ),
        //   ],
        // )
        child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: fruits.length,
            itemBuilder: (context, index) {
              return Card(
                child: Center(
                  child: Text(fruits[index]),
                ),
              );
             
            }),
      ),
    );
  }
}
