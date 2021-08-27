import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrentStaticsField extends StatefulWidget {
  final TextEditingController controller;
  final String label;

  const CurrentStaticsField({this.controller, this.label});

  @override
  _CurrentStaticsFieldState createState() => _CurrentStaticsFieldState();
}

class _CurrentStaticsFieldState extends State<CurrentStaticsField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(46.1),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(17.0)),
      padding: EdgeInsets.only(
          top: ScreenUtil().setHeight(3.0),
          bottom: ScreenUtil().setHeight(3.0),
          left: ScreenUtil().setWidth(12.0),
          right: ScreenUtil().setWidth(6.0)),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.label,
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: -0.9,
                fontWeight: FontWeight.normal,
                fontSize: ScreenUtil().setSp(15.0),
                color: Color(0xFF686868),
                fontFamily: 'helvetica'),
          ),
          Container(
            height: double.infinity,
            width: ScreenUtil().setWidth(209.42),
            padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(12.0),
                right: ScreenUtil().setWidth(6.0)),
            decoration: BoxDecoration(
                color: Color(0xFF19688D).withOpacity(0.1),
                borderRadius: BorderRadius.circular(15.0)),
            child: Center(
              child: TextField(
                controller: widget.controller,
                decoration: InputDecoration.collapsed(hintText: ''),
              ),
            ),
          )
        ],
      ),
    );
  }
}
