import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class snackbarwidget extends StatelessWidget {
  const snackbarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Snackbar Flutter'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text(
              'Woooo!',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            onPressed: () {
              final snackbar = SnackBar(
                  // action: SnackBarAction(
                  //   label: 'Undo',
                  //   textColor: Colors.blue,
                  //   onPressed: () {},
                  // ),
                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(20)),
                  behavior: SnackBarBehavior.floating,
                  duration: const Duration(milliseconds: 1000),
                  content: Text("Hellow Pawan Paliwal Love you !"));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
          ),
        ),
      ),
    );
  }
}
