import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/caloriesStatics/caloriesBreakdown.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class DiaryCaloriesCard extends StatefulWidget {

  @override
  _DiaryCaloriesCardState createState() => _DiaryCaloriesCardState();
}

class _DiaryCaloriesCardState extends State<DiaryCaloriesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(90.0),
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(12.0),
      ),
      decoration: BoxDecoration(
        boxShadow: [
            BoxShadow(
                blurRadius: 6,
                color: Colors.grey.withOpacity(0.12),
                offset: Offset(2, 2))
          ],
          color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(118.0),
              right: ScreenUtil().setWidth(24.0)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Calories Remaining',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          height: 1,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF222222),
                          fontSize: ScreenUtil().setSp(15))),
                  GestureDetector(
                    onTap: () => pushNewScreen(context, screen: CaloriesBreakdownScr()),
                    child: Icon(Icons.more_horiz,color: Color(0xFF020202),size: 28.0,))
                ],
              ),
          ),
          SizedBox(height: ScreenUtil().setHeight(8.0),),
          Padding(
            padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(16.0),
              right: ScreenUtil().setWidth(24.0)
              ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1,570',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          height: 1,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF686868),
                          fontSize: ScreenUtil().setSp(16))),
                  Text('-',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          height: 1,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF686868),
                          fontSize: ScreenUtil().setSp(23))),
                  Text('600',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          height: 1,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF686868),
                          fontSize: ScreenUtil().setSp(16))),
                  Text('+',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          height: 1,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF686868),
                          fontSize: ScreenUtil().setSp(15))),
                  Text('0',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          height: 1,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF686868),
                          fontSize: ScreenUtil().setSp(16))),
                  Text('=',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          height: 1,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF686868),
                          fontSize: ScreenUtil().setSp(15))),
                  Text('970',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          height: 1,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF17987D),
                          fontSize: ScreenUtil().setSp(20)))
                ]),
          ),
          SizedBox(height: ScreenUtil().setHeight(5.5)),
          Padding(
            padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(30.5),
            ),
            child: Row(
              children: [
              Text('Goal',
                  style: TextStyle(
                      fontFamily: 'helvetica',
                      height: 1,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF686868),
                      fontSize: ScreenUtil().setSp(8))),
              SizedBox(width: ScreenUtil().setWidth(88.0)),
              Text('Food',
                  style: TextStyle(
                      fontFamily: 'helvetica',
                      height: 1,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF686868),
                      fontSize: ScreenUtil().setSp(8))),
              SizedBox(width: ScreenUtil().setWidth(68.0)),
              Text('Excercise',
                  style: TextStyle(
                      fontFamily: 'helvetica',
                      height: 1,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF686868),
                      fontSize: ScreenUtil().setSp(8))),
              SizedBox(width: ScreenUtil().setWidth(59.0)),
              Text('Remaining',
                  style: TextStyle(
                      fontFamily: 'helvetica',
                      height: 1,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF6CBD45),
                      fontSize: ScreenUtil().setSp(8)))
            ]),
          ),
        ],
      ),
    );
  }
}