import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                buildTop,
                Image.asset('images/ic_top.png', width: 40, height: 4),
                buildSecond
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildTop = Container(
  color: Colors.blue,
  padding: EdgeInsets.only(left: 20, top: 20, right: 0, bottom: 20),
  child: Row(
    children: [
      Expanded(
          child: Container(
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(180)),
              child: Text('NT', style: TextStyle(color: Colors.white)),
            ),
            Container(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: Column(
                children: [
                  Text('Trungnguyen', style: TextStyle(color: Colors.white)),
                  Row(
                    children: [
                      Text('0đ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                      Icon(Icons.add, size: 10),
                      Container(
                        width: 2,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.add,
                        size: 10,
                      ),
                      Text(
                        '0',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.amber),
        padding: EdgeInsets.all(5.0),
        child: Text('Chưa định danh', style: TextStyle(color: Colors.white)),
      )
    ],
  ),
);

Widget buildSecond = SingleChildScrollView(
  child: Stack(
    children: [
      nodeOne,
    ],
  ),
);

Widget nodeOne = Container(
  height: 300,
  padding: EdgeInsets.all(18),
  decoration: BoxDecoration(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          Color(0xFFF5F7FB),
          Color(0xFFFFFFFF),
        ],
      ),
  ),
  child: Column(
    children: [
      Container(
        padding: EdgeInsets.all(12),
        height: 80,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 5, blurRadius: 7, offset: Offset(0,3))
            ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildButtonColumn(Icons.favorite, 'Thanh toán'),
            buildButtonColumn(Icons.favorite, 'Nạp tiền'),
            buildButtonColumn(Icons.favorite, 'Chuyển tiền'),
            buildButtonColumn(Icons.favorite, 'Túi đồ'),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(top: 12),
        height: 100,
        decoration: BoxDecoration(border:  Border.all(color: Colors.grey.withOpacity(0.7), width: 1), borderRadius: BorderRadius.circular(8.0)),
        child: Column(
          children: [
            Row(
              children: [
                Container(width: 20,margin: EdgeInsets.only(right: 8),child: Icon(Icons.face)),
                Expanded(child: Text('HD điện lực Hà Nội đến hạn thanh toán tháng 9', style: TextStyle(fontWeight: FontWeight.bold),)),
                Text('1.342.000 d', style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Expanded(
                    child: Text('PD110003974 . Nguyen Ba Trung', style: TextStyle(color: Colors.grey.withOpacity(0.5))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(color: Color(0xFFEBFBF5), borderRadius: BorderRadius.circular(12.0)),
                  child: Text('Thanh toan', style: TextStyle(color: Color(0x009D62), fontWeight: FontWeight.bold)),

                )
              ],
            )
          ],
        )
      ),
    ],
  ),
);

Column buildButtonColumn(IconData iconData, String label){
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(iconData),
      Text(label)
    ],
  );
}