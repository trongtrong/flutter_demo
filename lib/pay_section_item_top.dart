import 'package:flutter/material.dart';

class PaySectionItemTop extends StatefulWidget{
  PaySectionItemState createState() => PaySectionItemState();
}

class PaySectionItemState extends State<PaySectionItemTop>{

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildItem(Icons.favorite, 'Nạp tiền điện thoại'),
            buildItem(Icons.add, 'Mã thẻ điện thoại'),
            buildItem(Icons.face, 'Mua thẻ data 3G/4G'),
            buildItem(Icons.update, 'Thanh toán hóa đơn'),
          ],
        ),
    );

  }


  Widget buildItem(IconData iconData, String label){
    return Container(
      width: (MediaQuery.of(context).size.width - 32) / 4,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData),
          SizedBox(height: 6,),
          Text(label)
        ],
      ),
    );
  }

}
