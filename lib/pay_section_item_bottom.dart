import 'package:flutter/material.dart';

class PaySectionItemBottom extends StatefulWidget{
  PaySectionItemState createState() => PaySectionItemState();
}

class PaySectionItemState extends State<PaySectionItemBottom>{

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildItem(Icons.favorite, 'Truyền hình'),
            buildItem(Icons.add, 'Ưu đãi'),
            buildItem(Icons.face, 'Internet'),
            buildItem(Icons.update, 'Thêm'),
          ],
        ),
    );

  }


  Widget buildItem(IconData iconData, String label){
    return Container(
      width: (MediaQuery.of(context).size.width - 80) / 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData),
          SizedBox(height: 6,),
          Text(label, textAlign: TextAlign.center, maxLines: 2, style: TextStyle(fontSize: 12),)
        ],
      ),
    );
  }

}
