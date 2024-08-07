import 'package:flutter/material.dart';
import 'package:flutter1/Drawer.dart';
import 'package:flutter1/Image.dart';
import 'package:flutter1/ListView.dart';
import 'package:flutter1/alert.dart';
import 'package:flutter1/animated_text.dart';
import 'package:flutter1/bottomsheet.dart';
import 'package:flutter1/button.dart';
import 'package:flutter1/container_sized.dart';
import 'package:flutter1/dismisibble.dart';
import 'package:flutter1/rowscols.dart';
import 'package:flutter1/snackbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light, primaryColor: Colors.deepPurple),
      home: animatedtext(),
    );
  }
}
