import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Flutter Owesome',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          // color: Colors.red,
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color:Colors.blue,
            boxShadow: [
              BoxShadow(
                blurRadius: 40
              )
            ]
            
          ),
          child: Center(
            child: Text(
              'Pawan Paliwal',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
