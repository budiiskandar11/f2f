import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderedItemCard extends StatefulWidget {
  final String name;
  final double price;
  final int quantity;

  const OrderedItemCard(
      {@required this.name, @required this.price, @required this.quantity});

  @override
  _OrderedItemCardState createState() => _OrderedItemCardState();
}

class _OrderedItemCardState extends State<OrderedItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: ScreenUtil().setHeight(15.0),
      padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(12.0),
          right: ScreenUtil().setWidth(15.0)),
      child: Row(
        children: [
          Text(
            '${widget.quantity.toString()}x',
            style: TextStyle(
                fontSize: ScreenUtil().setSp(11.0),
                color: Color(0xFF242424),
                fontFamily: 'helvetica',
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            width: ScreenUtil().setWidth(11.0),
          ),
          Text(
            '${widget.name} x12',
            style: TextStyle(
                fontSize: ScreenUtil().setSp(12.0),
                color: Color(0xFF242424),
                fontFamily: 'helvetica',
                fontWeight: FontWeight.normal),
          ),
          Spacer(),
          Text(
            '\$${widget.price.toString()}',
            style: TextStyle(
                fontSize: ScreenUtil().setSp(12.0),
                color: Color(0xFF19688D),
                fontFamily: 'helvetica',
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
