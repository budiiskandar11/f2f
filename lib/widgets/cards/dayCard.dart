import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DayCard extends StatefulWidget {
  @override
  _DayCardState createState() => _DayCardState();
}

class _DayCardState extends State<DayCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(49.0),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(12.0)),
      padding: EdgeInsets.symmetric(
          vertical: ScreenUtil().setHeight(2.0),
          horizontal: ScreenUtil().setWidth(8.0)),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
      child: StatefulBuilder(
        builder: (_, state) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => {},
              child: Container(
                height: ScreenUtil().setHeight(38.0),
                width: ScreenUtil().setWidth(38.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF17987D),
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Day View',
                      style: TextStyle(
                          fontSize: ScreenUtil().setHeight(13.0),
                          fontFamily: 'helvetica',
                          letterSpacing: -0.5,
                          color: Color(0xFF686868).withOpacity(0.57)),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xFF686868).withOpacity(0.57),
                    )
                  ],
                ),
                Text(
                  'Today',
                  style: TextStyle(
                      fontSize: ScreenUtil().setHeight(16.0),
                      fontFamily: 'helvetica',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF17987D)),
                ),
              ],
            ),
            GestureDetector(
              onTap: () => {},
              child: Container(
                height: ScreenUtil().setHeight(38.0),
                width: ScreenUtil().setWidth(38.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF17987D),
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
