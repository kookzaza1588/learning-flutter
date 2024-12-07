import 'package:flutter/material.dart';
import 'package:flutter_sample/homework_1.dart';
import 'package:flutter_sample/homework_2.dart';
//import 'package:flutter_sample/my_scroll.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My flutter sample",
      home: MyWidget() ,
    );
  }
}
