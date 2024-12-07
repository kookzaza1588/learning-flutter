import 'package:flutter/material.dart';
import 'dart:math';

// ตัวแปร global
int randomNumber = Random().nextInt(10) + 1;

class MyRandom extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  final ValueNotifier<String> message =
      ValueNotifier(''); 

  MyRandom({Key? key}) : super(key: key);

  void check() {
    final input = int.tryParse(controller.text);

    if (input == null) {
      message.value = 'กรุณาใส่ตัวเลข';
    } else if (input == randomNumber) {
      message.value = 'ถูกต้อง';
    } else {
      message.value = 'ผิด! ลองใหม่อีกครั้ง';
    }
  }

  void generate() {
    randomNumber = Random().nextInt(10) + 1;
    message.value = '';
    controller.clear(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('แอปพลิเคชันทำนายตัวเลข 1-10'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder<String>(
              valueListenable: message,
              builder: (context, message, child) {
                return Text(
                  message,
                  textAlign: TextAlign.center,
                );
              },
            ),
            const SizedBox(height: 20),
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'กรุณากรอกตัวเลข',
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: check,
                  child: const Text('ตรวจคำตอบ'),
                ),
                ElevatedButton(
                  onPressed: generate,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text('สร้างเลขใหม่'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
