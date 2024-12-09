
import 'dart:math';

import 'package:flutter/material.dart';

class MyListview extends StatefulWidget {
  const MyListview({super.key});

  @override
  State<MyListview> createState() => _MyListviewState();
}

class _MyListviewState extends State<MyListview> {
  var rnd = Random();
  var titleText = ["star", "Heart", "Wi-Fi", "Buletooth", "Gear"];
  var leadingIcon = [
    Icons.star,
    Icons.favorite,
    Icons.wifi,
    Icons.bluetooth,
    Icons.settings,
  ];

  var switchWifi = true;
  var switchBluetooth = false;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
          centerTitle: true,
        ),
        body: ListView.separated(
            padding: const EdgeInsets.all(20),
            itemBuilder: (context,index) => BuildListItem(context,index),
            separatorBuilder: (context, index) => Divider(
                  thickness: 1,
                  color: Colors.amber,
                  indent: 10,
                  endIndent: 10,
                ),
            itemCount: titleText.length),
      );
  Widget BuildListItem(BuildContext ctx, int index) {
    return ListTile(
      leading: Icon(leadingIcon[index], size: 36),
      title: Text(titleText[index]),
      subtitle: Text("\$${rnd.nextInt(50) + 10}"),
      trailing: traillingWidget(ctx, index),
      iconColor: Colors.deepOrange,
      onTap: () => myAlert(ctx, 'เปิดดูรายการ ${titleText[index]}'),
    );
  }

  Widget traillingWidget(BuildContext ctx, int index) {
    var widgets = <Widget>[
      const Icon(Icons.arrow_forward_ios),
      InkWell(
        child: Icon(Icons.shopping_cart),
        onTap: () =>
            myAlert(ctx, 'ได้หยิบ ${titleText[index]} ใส่รถเข็นแล้ว'),
      ),
      Switch(
          value: switchWifi,
          onChanged: (isOn) => setState(() {
                switchWifi = isOn;
                var msg = (isOn) ? 'เปิด' : 'ปิด';
                myAlert(ctx, '${titleText[index]}:$msg');
              })),
      Switch(
          value: switchBluetooth,
          onChanged: (isOn) => setState(() {
                switchBluetooth = isOn;
                var msg = (isOn) ? 'เปิด' : 'ปิด';
                myAlert(ctx, '${titleText[index]}:$msg');
              })),
       InkWell(
        child: Icon(Icons.shopping_cart),
         onTap: () =>
            myAlert(ctx, 'ได้หยิบ ${titleText[index]} ใส่รถเข็นแล้ว'), 
      )
    ];
    return widgets[index];
  }

  void myAlert(BuildContext ctx, String txt) {
    showDialog(
        context: ctx,
        builder: (ctx) => AlertDialog(
              content: Text(txt,style: TextStyle(fontSize: 20,color: Colors.blue),),
              actions: [
                TextButton(
                    onPressed: () => Navigator.of(ctx).pop(),
                    child: Text("ตกลง"))
              ],
            ));
  }
}
