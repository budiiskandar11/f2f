import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/main/home.dart';

class Header extends StatefulWidget {
  final String title;
  final double titlepadding;

  const Header({@required this.title, @required this.titlepadding});

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
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
            stops: [0.5, 0.9],
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Icon(Icons.arrow_back_ios_rounded,
                        size: 24, color: Colors.white),
                    onTap: () => Navigator.pop(context),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(widget.titlepadding),
                  ),
                  Text(
                    widget.title,
                    style: TextStyle(
                        fontSize: ScreenUtil().setHeight(18.0),
                        fontFamily: 'helvetica',
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
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
