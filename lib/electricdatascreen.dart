import 'package:electric_cal/result.dart';
import 'package:flutter/material.dart';

class ElectricDataScreen extends StatelessWidget{

  TextEditingController n1 = new TextEditingController();
  TextEditingController n2 = new TextEditingController();
  TextEditingController n3 = new TextEditingController();
  TextEditingController n4 = new TextEditingController();
  TextEditingController n5 = new TextEditingController();
  TextEditingController n6 = new TextEditingController();
  TextEditingController n8 = new TextEditingController();
  TextEditingController n9 = new TextEditingController();
  TextEditingController n10 = new TextEditingController();
  TextEditingController n11 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
            "احسب فاتورة استهلاكك",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: ListView(
            children: [
              TextField(
                controller: n1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "ادخل القيمة السابقة",
                ),
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              TextField(
                controller: n2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "ادخل القيمة الحالية",
                ),
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              MaterialButton(
                onPressed: (){
                  String x = n1.text;
                  String y = n2.text;
                  int a = int.parse(x);
                  int b = int.parse(y);
                  int c = b-a;
                  double n4, n5, n6;
                  n3.text = c.toString();
                  String n7;
                  if (c>=0 && c<=50)
                    {
                      n7="الشريحة الاولى";
                      n8.text=n7;
                      n6=1;
                      n9.text=n6.toString();
                      n4 = c * 0.48;
                      n10.text=n4.toString();
                      n5 = n4 + n6;
                      n11.text=n5.toString();
                    }
                  else if (c>=51 && c<=100)
                  {
                    n7="الشريحة الثانية";
                    n8.text=n7;
                    n6=2;
                    n9.text=n6.toString();
                    n4 = ((c-50)*0.58) + (50*0.48);
                    n10.text=n4.toString();
                    n5 = n4 + n6;
                    n11.text=n5.toString();
                  }
                  else if (c>=101 && c<=200)
                  {
                    n7="الشريحة الثالثة";
                    n8.text=n7;
                    n6=6;
                    n9.text=n6.toString();
                    n4 = c * 0.77;
                    n10.text=n4.toString();
                    n5 = n4 + n6;
                    n11.text=n5.toString();
                  }
                  else if (c>=201 && c<=350)
                  {
                    n7="الشريحة الرابعة";
                    n8.text=n7;
                    n6=11;
                    n9.text=n6.toString();
                    n4 = ((c-200)*1.06) + (200*0.77);
                    n10.text=n4.toString();
                    n5 = n4 + n6;
                    n11.text=n5.toString();
                  }
                  else if (c>=351 && c<=650)
                  {
                    n7="الشريحة الخامسة";
                    n8.text=n7;
                    n6=15;
                    n9.text=n6.toString();
                    n4 = ((c-350)*1.28) + ((200*0.77) + (150*1.06));
                    n10.text=n4.toString();
                    n5 = n4 + n6;
                    n11.text=n5.toString();
                  }
                  else if (c>=651 && c<=1000)
                  {
                    n7="الشريحة السادسة";
                    n8.text=n7;
                    n6=25;
                    n9.text=n6.toString();
                    n4 = c * 1.28;
                    n10.text=n4.toString();
                    n5 = n4 + n6;
                    n11.text=n5.toString();
                  }
                  else if (c>=1001)
                  {
                    n7="الشريحة السابعة";
                    n8.text=n7;
                    n6=40;
                    n9.text=n6.toString();
                    n4 = c * 1.45;
                    n10.text=n4.toString();
                    n5 = n4 + n6;
                    n11.text=n5.toString();
                  }
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Result(n3.text, n10.text, n8.text, n9.text, n11.text)));
                },
                child: Text(
                  "احسب الفاتورة",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}