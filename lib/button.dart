import 'package:flutter/material.dart';

class buttonwidgets extends StatelessWidget {
  const buttonwidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('Button Flutter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.red),
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                child: Text(
                  'Press Me',
                  style: TextStyle(fontSize: 40),
                ),
                onPressed: () {},
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      print("Hellow Pawan!");
                    },
                    child: Text(
                      'Wow!~',
                      style: TextStyle(fontSize: 30),
                    )),
              )
            ],
          ),
        ));
  }
}
