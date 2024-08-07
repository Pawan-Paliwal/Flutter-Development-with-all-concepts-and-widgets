import 'package:flutter/material.dart';

class alertwidget extends StatelessWidget {
  const alertwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.heart_broken), // Replace with any icon you prefer
            SizedBox(width: 8), // Add some space between the icon and the text
            Text('Alert dialog'),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Press me!'),
          onPressed: () {
            _showMyDialog(context);
          },
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('This is an alert !'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [Text('This is a demo'), Text('This is Pawan Paliwal')],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'))
          ],
        );
      });
}
