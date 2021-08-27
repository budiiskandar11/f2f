import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatefulWidget {
  final String image;
  final String name;
  final String description;
  final int price;

  ProductCard(
      {@required this.image,
      @required this.name,
      @required this.description,
      @required this.price});

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(195.0),
      width: ScreenUtil().setWidth(346.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
              image: AssetImage(widget.image), fit: BoxFit.fill)),
      child: Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.only(
            top: ScreenUtil().setHeight(7.0),
            bottom: ScreenUtil().setHeight(4.0),
            left: ScreenUtil().setWidth(14),
            right: ScreenUtil().setWidth(11)),
        margin: EdgeInsets.only(
            top: ScreenUtil().setHeight(135.0),
            bottom: ScreenUtil().setHeight(6.0),
            left: ScreenUtil().setWidth(5.5),
            right: ScreenUtil().setWidth(6.0)),
        height: ScreenUtil().setHeight(51.0),
        width: ScreenUtil().setWidth(334.5),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.95),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'helvatica',
                        height: 1.1,
                        fontSize: ScreenUtil().setSp(17),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$${widget.price}   ${widget.description}',
                    style: TextStyle(
                      fontFamily: 'helvatica',
                      height: 1,
                      color: Colors.black.withOpacity(0.59),
                      fontSize: ScreenUtil().setSp(15),
                    ),
                  )
                ],
              ),
            ),
            VerticalDivider(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '2.0 km Delivery in 32 min',
                    style: TextStyle(
                        fontFamily: 'helvatica',
                        height: 1,
                        fontSize: ScreenUtil().setSp(13),
                        color: Color(0xFF88A0AC)),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(8.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ImageIcon(AssetImage('assets/discount-svgrepo-com@3x.png'),size: ScreenUtil().setHeight(11.63),color: Color(0xFF6CBD45)),
                      SizedBox(width: ScreenUtil().setWidth(4.4),),
                      Text(
                        'Up to 4k delivery discount',
                        style: TextStyle(
                            fontFamily: 'helvatica',
                            height: 1,
                            fontSize: ScreenUtil().setSp(11),
                            color: Color(0xFF6CBD45)),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
