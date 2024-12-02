import 'package:flutter/material.dart';

class MyscrollView extends StatelessWidget {
  const MyscrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScrollView"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        //scrollDirection: Axis.horizontal, ด้านข้าง
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              boxContainer("One"),
              boxContainer("Two"),
              boxContainer("Three"),
              boxContainer("Four"),
              boxContainer("Five"),
              boxContainer("Six"),
              boxContainer("Seven"),
            ],
          ),
        ),
      ),
    );
  }

  // ฟังก์ชัน boxContainer ย้ายออกจาก build
  Widget boxContainer(String txt) => Container(
        width: 100,
        height: 150,
        color: Color.fromARGB(255, 231, 37, 37),
        margin: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Text(
          txt,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}
