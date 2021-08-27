import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/main/home.dart';
import 'package:foodtofit/screens/features/myaccount.dart';
import 'package:foodtofit/screens/features/notification.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HeaderDiary extends StatefulWidget {
  @override
  _HeaderDiaryState createState() => _HeaderDiaryState();
}

class _HeaderDiaryState extends State<HeaderDiary> {
  int date = 10;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipper(),
      child: Container(
        height: ScreenUtil().setHeight(125.51),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(12.0)),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Color(0xFF19688D), Color(0xFF17987D)],
            stops: [0.7, 0.98],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(0.5),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: ImageIcon(AssetImage('assets/menu-svgrepo-com@3x.png'),
                        size: 18, color: Colors.white),
                    onTap: () => pushNewScreen(context, screen: MyAccountScr(),withNavBar: false)
                  ),
                  StatefulBuilder(
                      builder: (BuildContext context, StateSetter state) =>  Container(
                      height: ScreenUtil().setHeight(80.51),
                      width: ScreenUtil().setWidth(230.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            child: Icon(Icons.arrow_back_ios_rounded,
                                size: 18, color: Colors.white),
                            onTap: () => state((){date--;}),
                          ),
                          Text(
                            'Wed, Mar ${date.toString()},2021',
                            style: TextStyle(
                                fontSize: ScreenUtil().setHeight(18.0),
                                fontFamily: 'helvetica',
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          GestureDetector(
                            child: Icon(Icons.arrow_forward_ios_rounded,
                                size: 18, color: Colors.white),
                            onTap: () => state((){date++;}),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Icon(Icons.notifications,
                        size: 24, color: Colors.white),
                    onTap: () => pushNewScreen(context, screen: NotificationScr()),
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
