import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/main/home.dart';
import 'package:foodtofit/screens/features/notification.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomeHeader extends StatefulWidget {

  @override
  _HomeHeaderState createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipper(),
      child: Container(
        height: ScreenUtil().setHeight(120.51),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(12.0)),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Color(0xFF19688D), Color(0xFF17987D)],
            stops: [0.45, 0.95],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(25.5),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Icon(Icons.arrow_back_ios_rounded,
                        size: 24, color: Colors.white),
                    onTap: () => Navigator.of(context,rootNavigator: true).pop(),
                  ),
                  GestureDetector(
                    child: Icon(Icons.notifications,
                        size: 24, color: Colors.white),
                    onTap: () => pushNewScreen(context, screen: NotificationScr(),withNavBar: false),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}