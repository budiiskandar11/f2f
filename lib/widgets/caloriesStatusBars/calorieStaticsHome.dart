import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/caloriesStatics/caloriesBreakdown.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class CaloriesStatics extends StatefulWidget {
  @override
  _CaloriesStaticsState createState() => _CaloriesStaticsState();
}

class _CaloriesStaticsState extends State<CaloriesStatics> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CalorieClipper(),
      child: Container(
        height: ScreenUtil().setHeight(180),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0))),
        child: Column(
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Calories Weekly Goal',
                  style: TextStyle(
                      fontFamily: 'helvetica',
                      height: 1,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      fontSize: ScreenUtil().setSp(15.0)),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(100.0),
                ),
                GestureDetector(
                  onTap: () => pushNewScreen(context, screen: CaloriesBreakdownScr(),withNavBar: false),
                  child: Icon(
                    Icons.menu_rounded,
                    color: Colors.black,
                    size: 22.0,
                  ),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(12.0),
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(17.0),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: ScreenUtil().setHeight(4.0),
                  ),
                  Text('1,570',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          height: 1,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF686868),
                          fontSize: ScreenUtil().setSp(23))),
                  SizedBox(
                    height: ScreenUtil().setHeight(4.0),
                  ),
                  Text('Goal',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          height: 1,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF686868),
                          fontSize: ScreenUtil().setSp(13))),
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
                  SizedBox(
                    height: ScreenUtil().setHeight(4.0),
                  ),
                  Text('0',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          height: 1,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF686868),
                          fontSize: ScreenUtil().setSp(23))),
                  SizedBox(
                    height: ScreenUtil().setHeight(4.0),
                  ),
                  Text('Food',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          height: 1,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF686868),
                          fontSize: ScreenUtil().setSp(13))),
                ],
              ),
              Text('+',
                  style: TextStyle(
                      fontFamily: 'helvetica',
                      height: 1,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF686868),
                      fontSize: ScreenUtil().setSp(23))),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: ScreenUtil().setHeight(4.0),
                  ),
                  Text('0',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          height: 1,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF686868),
                          fontSize: ScreenUtil().setSp(23))),
                  SizedBox(
                    height: ScreenUtil().setHeight(4.0),
                  ),
                  Text('Excercise',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          height: 1,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF686868),
                          fontSize: ScreenUtil().setSp(13))),
                ],
              ),
              Text('=',
                  style: TextStyle(
                      fontFamily: 'helvetica',
                      height: 1,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF686868),
                      fontSize: ScreenUtil().setSp(24))),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: ScreenUtil().setHeight(4.0),
                  ),
                  Text('1,570',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          height: 1,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF17987D),
                          fontSize: ScreenUtil().setSp(24))),
                  SizedBox(
                    height: ScreenUtil().setHeight(4.0),
                  ),
                  Text('Remaining',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          height: 1,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF6CBD45),
                          fontSize: ScreenUtil().setSp(13))),
                ],
              )
            ]),
          ],
        ),
      ),
    );
  }
}

class CalorieClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path
      ..lineTo(0, size.height - 40)
      ..cubicTo(125, size.height - 125, size.width - 75, size.height + 80,
          size.width, size.height - 40)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
