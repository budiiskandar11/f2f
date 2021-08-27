import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CaloriesStats extends StatefulWidget {
  @override
  _CaloriesStatsState createState() => _CaloriesStatsState();
}

class _CaloriesStatsState extends State<CaloriesStats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(57.0),
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(12.0),
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 6,
            color: Colors.grey.withOpacity(0.12),
            offset: Offset(2, 2))
      ], color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: ScreenUtil().setHeight(12.0)),
                Text('1,570',
                    style: TextStyle(
                        fontFamily: 'helvetica',
                        height: 1,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF686868),
                        fontSize: ScreenUtil().setSp(16))),
                SizedBox(height: ScreenUtil().setHeight(5.0)),
                Text('Goal',
                    style: TextStyle(
                        fontFamily: 'helvetica',
                        height: 1,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF686868),
                        fontSize: ScreenUtil().setSp(8))),
              ],
            ),
            Text('-',
                style: TextStyle(
                    fontFamily: 'helvetica',
                    height: 1,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF686868),
                    fontSize: ScreenUtil().setSp(23))),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: ScreenUtil().setHeight(12.0)),
                Text('800',
                    style: TextStyle(
                        fontFamily: 'helvetica',
                        height: 1,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF686868),
                        fontSize: ScreenUtil().setSp(16))),
                        SizedBox(height: ScreenUtil().setHeight(5.0)),
                Text('Food',
                    style: TextStyle(
                        fontFamily: 'helvetica',
                        height: 1,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF686868),
                        fontSize: ScreenUtil().setSp(8))),
              ],
            ),
            Text('+',
                style: TextStyle(
                    fontFamily: 'helvetica',
                    height: 1,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF686868),
                    fontSize: ScreenUtil().setSp(15))),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: ScreenUtil().setHeight(12.0)),
                Text('0',
                    style: TextStyle(
                        fontFamily: 'helvetica',
                        height: 1,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF686868),
                        fontSize: ScreenUtil().setSp(16))),
                        SizedBox(height: ScreenUtil().setHeight(5.0)),
                Text('Excercise',
                    style: TextStyle(
                        fontFamily: 'helvetica',
                        height: 1,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF686868),
                        fontSize: ScreenUtil().setSp(8))),
              ],
            ),
            Text('=',
                style: TextStyle(
                    fontFamily: 'helvetica',
                    height: 1,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF686868),
                    fontSize: ScreenUtil().setSp(15))),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: ScreenUtil().setHeight(12.0)),
                Text('970',
                    style: TextStyle(
                        fontFamily: 'helvetica',
                        height: 1,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF17987D),
                        fontSize: ScreenUtil().setSp(20))),
                        SizedBox(height: ScreenUtil().setHeight(5.0)),
                Text('Remaining',
                style: TextStyle(
                    fontFamily: 'helvetica',
                    height: 1,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF6CBD45),
                    fontSize: ScreenUtil().setSp(8))),
              ],
            )
          ]),
    );
  }
}
