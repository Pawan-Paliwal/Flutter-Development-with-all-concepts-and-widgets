import 'package:flutter/material.dart';

class ListGrid extends StatelessWidget {
  const ListGrid({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> fruits = ['mango', 'apple', 'Banana', 'pawan'];
    Map Person = {
      'fruits': ['mango', 'apple', 'Banana', 'pawan', 'amam'],
      'names': ['karan', 'Pawan', 'Gaurav', 'jannau', 'babita'],
    };
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'List and Grid',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        // child: ListView.builder(
        //     itemCount: fruits.length,
        //     itemBuilder: (context, index) {
        //       return Card(
        //         child: ListTile(
        //           leading: Icon(Icons.person),
        //           title: Text(Person['fruits'][index]),
        //           subtitle: Text(Person['names'][index]),
        //         ),
        //       );
        //     }),
        // child: GridView(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 2,
        //       crossAxisSpacing: 10,
        //       mainAxisSpacing: 10,
        //       childAspectRatio: 4 / 3),
        //   children: [
        //     Card(
        //       child: Center(child: Text('Orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Orange')),
        //     ),
        //
        //   ],
        // ),
        child: GridView.builder(
          itemCount: fruits.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Card(
                child: Center(
                  child: Text(fruits[index]),
                ),
              );
            }),
      ),
    );
    ;
  }
}
