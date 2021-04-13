import 'package:flutter/material.dart';

class HeaderSection extends StatefulWidget {
  @override
  _HeaderSectionState createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.only(left: 20, top: 20, right: 0, bottom: 20),
      child: Row(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle),
                  child: Text('NT', style: TextStyle(color: Colors.white)),
                ),
                Container(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(10)), color: Colors.amber),
            padding: EdgeInsets.all(5.0),
            child: Text('Chưa định danh', style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
