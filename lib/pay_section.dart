import 'package:flutter/material.dart';
import 'package:ex_ui_demo/pay_section_item_top.dart';

class PaySection extends StatefulWidget{
  PayState createState() => PayState();
}

class PayState extends State<PaySection>{

  @override
  Widget build(BuildContext context) {

    return Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Dich vu thanh toan', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),),
            PaySectionItemTop(),
          ],
        ),

    );

  }

}