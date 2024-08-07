import 'package:flutter/material.dart';

class rowscols extends StatelessWidget {
  const rowscols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('RowsColumn'),
      ),
      body: Container(
          height: h,
          width: w,
          color: Colors.yellow,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.red,
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.blue,
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.purple,
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.green,
                )
              ],
            ),
          )),
    );
  }
}
