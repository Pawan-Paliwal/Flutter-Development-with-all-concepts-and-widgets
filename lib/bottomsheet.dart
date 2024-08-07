import 'package:flutter/material.dart';

class bottomsheetwid extends StatelessWidget {
  const bottomsheetwid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.account_tree_outlined,
              color: Colors.white,
            ), // Replace with any icon you prefer
            SizedBox(width: 8), // Add some space between the icon and the text
            Text(
              'Bottomsheet flutter',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Show Bottom Sheet"),
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Theme.of(context).primaryColor,
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text('orange'),
                        subtitle: Text("Pawan"),
                      ),
                      ListTile(
                        title: Text('apple'),
                        subtitle: Text("rahul"),
                      ),
                      ListTile(
                        title: Text('mango'),
                        subtitle: Text("rohan"),
                      ),
                      ListTile(
                        title: Text('berry'),
                        subtitle: Text("emilien"),
                      ),
                      ListTile(
                        title: Text('cherry'),
                        subtitle: Text("sohan"),
                      ),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
