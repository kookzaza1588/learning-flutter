import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('using container'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [container1(), container2()],
        ),
      ),
    );
  }

  Widget container2() => Container(
        height: 200,
        margin: const EdgeInsets.all(20),
        // color: Colors.blue,
        child:  Text(
          "บ้านมีปลา",
          style:  TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        decoration: BoxDecoration(
          color: Colors.black12,
          border: Border.all(
            color: const Color.fromARGB(255, 218, 14, 14),
            style: BorderStyle.solid,
            width: 30,
          ),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.elliptical(30, 30))
          ),
        
        
      );

  Widget container1() => Container(
        height: 500,
        color: Colors.amberAccent,
        width: 300,
        margin: const EdgeInsets.all(60),
        padding: const EdgeInsets.only(left: 60, top: 100),
        child: const Text(
          "I love u 3000",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      );
}
