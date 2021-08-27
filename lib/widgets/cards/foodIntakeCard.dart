import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodIntakeCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final int value;
  FoodIntakeCard({this.title, this.subtitle, this.value});

  @override
  _FoodIntakeCardState createState() => _FoodIntakeCardState();
}

class _FoodIntakeCardState extends State<FoodIntakeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(35.0),
      width: double.infinity,
      margin: EdgeInsets.only(
          left: ScreenUtil().setWidth(23.0),
          right: ScreenUtil().setWidth(18.0)),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(widget.title,
            style: TextStyle(
                fontFamily: 'helvetica',
                height: 1,
                fontWeight: FontWeight.normal,
                color: Color(0xFF121212),
                fontSize: ScreenUtil().setSp(15.0))),
        subtitle: Text(widget.subtitle,
            style: TextStyle(
                fontFamily: 'helvetica',
                height: 1,
                fontWeight: FontWeight.normal,
                color: Color(0xFF686868).withOpacity(0.68),
                fontSize: ScreenUtil().setSp(13.0))),
        trailing: Text(widget.value.toString(),
            style: TextStyle(
                fontFamily: 'helvetica',
                height: 1,
                fontWeight: FontWeight.w600,
                color: Color(0xFF121212),
                fontSize: ScreenUtil().setSp(22.0))),
      ),
    );
  }
}
