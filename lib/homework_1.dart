import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("นนท์กฤช 1156"),
          centerTitle: true,
          backgroundColor: Colors.green,
          titleTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        body: Center(
          child: Column(
            children: [
              image(),
              detail(),
              icon(),
            ],
          ),
        ),
      ),
    );
  }

  image() => Container(
      margin: const EdgeInsets.all(20),
       child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Thai_green_chicken_curry_and_roti.jpg/1200px-Thai_green_chicken_curry_and_roti.jpg',
        fit: BoxFit.scaleDown,
        width: 500,
      ),
    );
  

   
  


  Widget detail() => Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: const Column(
          children: [
            Text(
              'แกงเขียวหวานไก่',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '         แกงเขียวหวานไก่ หนึ่งในอาหารไทยที่คนทั่วโลกหลงรัก ด้วยรสชาติกลมกล่อม หอมสมุนไพร และเนื้อไก่นุ่ม ๆ '
              'อร่อยเต็มคำ ถ้าอยากได้รสชาติที่แท้จริง สูตรนี้คือคำตอบ!',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      );

  Widget icon() => Container(
        
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.amber,
                ),
                SizedBox(width: 10),
                Text(
                  '5.0 (2515 รีวิว)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailicon(Icons.kitchen, 'เตรียม', '15 นาที'),
                detailicon(Icons.timer, 'ปรุง', '20 นาที'),
                detailicon(Icons.group, 'เสิร์ฟ', '2-3 คน'),
              ],
            ),
          ],
        ),
      );

  Widget detailicon(IconData icon, String title, String time) => Column(
        children: [
          Icon(icon, size: 28, color: Colors.green),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            time,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
        ],
      );
}
