import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ex_ui_demo/pay_section_item_top.dart';
import 'package:ex_ui_demo/pay_section_item_bottom.dart';

class PaySection extends StatefulWidget{
  PayState createState() => PayState();
}

class PayState extends State<PaySection>{

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Dich vu thanh toan', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),),
            SizedBox(height: 12,),
            PaySectionItemTop(),
            PaySectionItemBottom(),
            Container(margin: EdgeInsets.only(top: 20),height: 100.0, decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(8.0)),)
          ],
        ),

    );

  }

}