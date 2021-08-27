import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DishCardOrder extends StatefulWidget {
  @override
  _DishCardOrderState createState() => _DishCardOrderState();
}

class _DishCardOrderState extends State<DishCardOrder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(92.0),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(24.5)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(8.5),
              right: ScreenUtil().setWidth(10.0),
              top: ScreenUtil().setHeight(24.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Delivery location',
                    style: TextStyle(
                        color: Color(0xFF686868),
                        fontFamily: 'helvetica',
                        fontWeight: FontWeight.normal,
                        fontSize: ScreenUtil().setSp(12.0))),
                Text('JI. Taman Jeruk Mas Tim. Blok G.\n1 No.2',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'helvetica',
                        fontWeight: FontWeight.normal,
                        fontSize: ScreenUtil().setSp(12.0))),
              ],
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(8.6)),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: ScreenUtil().setHeight(20.44),
              width: ScreenUtil().setWidth(83.09),
              margin: EdgeInsets.only(
              right: ScreenUtil().setWidth(10.0)),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,stops: [0.0,0.5],
                  colors: [
                    Color(0xFF30A949),
                    Color(0xFF6CBD45)
                  ]
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.edit_outlined ,color: Colors.white,size: 10.0,),
                 SizedBox(width: ScreenUtil().setWidth(2.0)),
                Text('Edit Location',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'helvetica',
                        fontWeight: FontWeight.normal,
                        fontSize: ScreenUtil().setSp(9.0))),
              ],
            ),
            ),
          )
        ],
      ),
    );
  }
}
