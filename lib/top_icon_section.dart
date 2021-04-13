import 'package:flutter/material.dart';

class TopIconSection extends StatefulWidget {
  @override
  _TopIconSectionState createState() => _TopIconSectionState();
}

class _TopIconSectionState extends State<TopIconSection> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildButtonColumn(Icons.favorite, 'Thanh toán'),
          buildButtonColumn(Icons.ac_unit_outlined, 'Nạp tiền'),
          buildButtonColumn(Icons.map, 'Chuyển tiền'),
          buildButtonColumn(Icons.update, 'Túi đồ'),
        ],
      ),
    );
  }


  Widget buildButtonColumn(IconData iconData, String label){
    return Container(
      width: (MediaQuery.of(context).size.width - 32)/4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData),
          SizedBox(height: 6),
          Text(label, overflow: TextOverflow.ellipsis)
        ],
      ),
    );
  }

}
