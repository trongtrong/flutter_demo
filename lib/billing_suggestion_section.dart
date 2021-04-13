import 'package:flutter/material.dart';

class BillingSuggestionSection extends StatefulWidget {
  @override
  _BillingSuggestionSectionState createState() => _BillingSuggestionSectionState();
}

class _BillingSuggestionSectionState extends State<BillingSuggestionSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(top: 12),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.7), width: 1),
            borderRadius: BorderRadius.circular(8.0)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(right: 8),
                child: Icon(Icons.face, size: 24,)),
            Expanded(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Text(
                            'HD điện lực Hà Nội đến hạn thanh toán thanh toán thanh toán thanh toán tháng 9',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      Text(
                        '1.342.000 d',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Text('PD110003974 . Nguyen Ba Trung',
                              style:
                              TextStyle(color: Colors.grey.withOpacity(0.5))),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Color(0xFFEBFBF5),
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Text('Thanh toan',
                            style: TextStyle(
                                color: Color(0xff009D62),
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
