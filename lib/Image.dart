import 'package:flutter/material.dart';

class Imagewidget extends StatelessWidget {
  const Imagewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.person_2), // Replace with any icon you prefer
            SizedBox(width: 8), // Add some space between the icon and the text
            Text('Doraemon Flutter'),
          ],
        ),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.red,
                )
              ],
              image: DecorationImage(
                  image: AssetImage('assets/images.jpeg'), fit: BoxFit.cover),
              color: Colors.red,
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
