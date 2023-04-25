import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Result extends StatelessWidget{

  late String c,n4,n7,n6,n5;
  Result(this.c, this.n4, this.n7, this.n6, this.n5);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
            "الاستهلاك",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.all(20.0)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("كمية استهلاكك: ${c}", textAlign: TextAlign.right, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("قيمة الاستهلاك بالجنية: ${n4}", textAlign: TextAlign.right, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("رقم الشريحة: ${n7}", textAlign: TextAlign.right, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("قيمة خدمة العملاء: ${n6}", textAlign: TextAlign.right, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("اجمالى الفاتورة: ${n5}", textAlign: TextAlign.right, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            ),
          ],
        ),
      ),
    );
  }
}