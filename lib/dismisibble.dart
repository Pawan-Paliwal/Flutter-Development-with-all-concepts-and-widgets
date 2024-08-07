import 'package:flutter/material.dart';

class Dismissiblewid extends StatefulWidget {
  const Dismissiblewid({super.key});

  @override
  State<Dismissiblewid> createState() => _DismissiblewidState();
}

class _DismissiblewidState extends State<Dismissiblewid> {
  List<String> fruits = ['mango', 'apple', 'Banana', 'pawan'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Dismissible Package'),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          final fruit = fruits[index];
          return Dismissible(
            key: Key(fruit),
            onDismissed: (direction) {
              setState(() {
                fruits.removeAt(index);
              });
              if (direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('$fruit dismissed'),
                    backgroundColor: Colors.red,
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('$fruit dismissed'),
                    backgroundColor: Colors.green,
                  ),
                );
              }
            },
            background: Container(color: Colors.red),
            secondaryBackground: Container(color: Colors.green),
            child: Card(
              child: ListTile(
                title: Text(fruit),
              ),
            ),
          );
        },
      ),
    );
  }
}
