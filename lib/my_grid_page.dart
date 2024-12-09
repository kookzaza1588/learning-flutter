import 'dart:math';
import 'package:flutter/material.dart';

class MyGridPage extends StatelessWidget {
  const MyGridPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("GridView.builder"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 206, 40, 40),
        ),
        body: GridView.builder(
          itemCount: 7,
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 4,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (context, index) => ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: buildGridTile(context, index),
          ),
        ), // กำหนดรูปแบบทรง
      );

  Widget buildGridTile(BuildContext ctx, int index) {
    index++;
    var rnd = Random();
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.amber,
        title: Text("สินค้า $index"),
        subtitle: Text("\$${50 + rnd.nextInt(200)}"),
        trailing: InkWell(
          child: Icon(
            Icons.zoom_in,
            size: 32,
            color: Colors.blue,
          ),
          onTap: () {
            // เรียกใช้ MyAlertbuild เมื่อคลิก
            MyAlertbuild(ctx, "รายละเอียดของสินค้าลำดับที่ $index");
          },
        ),
      ),
      child: Image.network(
        "https://picsum.photos/250?random=$index",
        fit: BoxFit.cover,
      ),
    );
  }

  void MyAlertbuild(BuildContext ctx, String txt) {
    showDialog(
      context: ctx,
      builder: (ctx) => AlertDialog(
        content: Text(txt),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop(); // ใช้ Navigator แทน NavigationBar
            },
            child: Text("ตกลง"),
          ),
        ],
      ),
    );
  }
}
