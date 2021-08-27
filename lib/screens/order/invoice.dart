import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/main/home.dart';
import 'package:foodtofit/widgets/other/dailogBox.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../features/notification.dart';

class InvoiceScr extends StatefulWidget {
  @override
  _InvoiceScrState createState() => _InvoiceScrState();
}

class _InvoiceScrState extends State<InvoiceScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                height: ScreenUtil().setHeight(120.51),
                width: double.infinity,
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(12.0)),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [Color(0xFF19688D), Color(0xFF17987D)],
                    stops: [0.55, 1.0],
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
                            onTap: () => Navigator.pop(context),
                          ),
                          Text(
                            'Invoice',
                            style: TextStyle(
                                fontSize: ScreenUtil().setHeight(18.0),
                                fontFamily: 'helvetica',
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          GestureDetector(
                            child: Icon(Icons.notifications,
                                size: 24, color: Colors.white),
                            onTap: () => pushNewScreen(context,
                                screen: NotificationScr(), withNavBar: false),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(40.5),
            ),
            Text(
              'Invoice Draft',
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: -0.9,
                  fontWeight: FontWeight.w300,
                  fontSize: ScreenUtil().setSp(22.0),
                  color: Color(0xFF19688D),
                  fontFamily: 'helvetica'),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(2.5),
            ),
            Text(
              '(*228) (AP240)',
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: -0.9,
                  fontWeight: FontWeight.w300,
                  fontSize: ScreenUtil().setSp(18.0),
                  color: Color(0xFF686868),
                  fontFamily: 'helvetica'),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(38.0),
            ),
            Container(
              height: ScreenUtil().setHeight(60.0),
              width: ScreenUtil().setWidth(322.0),
              padding: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setHeight(10.0),
                  horizontal: ScreenUtil().setWidth(28.0)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 4.0,
                        offset: Offset(1, 2))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Invoice Date',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.w300,
                            fontSize: ScreenUtil().setSp(12.0),
                            color: Color(0xFF686868),
                            fontFamily: 'helvetica'),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(2.5),
                      ),
                      Text(
                        '2021-02-16',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.w300,
                            fontSize: ScreenUtil().setSp(15.0),
                            color: Color(0xFF30A949),
                            fontFamily: 'helvetica'),
                      ),
                    ],
                  ),
                  VerticalDivider(
                    color: Color(0xFF707070).withOpacity(0.49),
                  ),
                  Column(
                    children: [
                      Text(
                        'Due Date',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.w300,
                            fontSize: ScreenUtil().setSp(12.0),
                            color: Color(0xFF686868),
                            fontFamily: 'helvetica'),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(2.5),
                      ),
                      Text(
                        '2021-02-17',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.w300,
                            fontSize: ScreenUtil().setSp(15.0),
                            color: Color(0xFF19688D),
                            fontFamily: 'helvetica'),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(35.0),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(28.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Produk',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(18.0),
                        color: Color(0xFF393737),
                        fontFamily: 'helvetica'),
                  ),
                  Text(
                    'Price',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(18.0),
                        color: Color(0xFF393737),
                        fontFamily: 'helvetica'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(13.0),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(28.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Aimal Naseem',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: ScreenUtil().setSp(18.0),
                        color: Color(0xFF686868),
                        fontFamily: 'helvetica'),
                  ),
                  Text(
                    '800.0',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: ScreenUtil().setSp(18.0),
                        color: Color(0xFF686868),
                        fontFamily: 'helvetica'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(31.0),
            ),
            Divider(
              indent: ScreenUtil().setWidth(164.0),
              endIndent: ScreenUtil().setWidth(20.5),
              color: Color(0xFF707070),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20.5),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(164.0),
                right: ScreenUtil().setWidth(28.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(18.0),
                        color: Color(0xFF393737),
                        fontFamily: 'helvetica'),
                  ),
                  Text(
                    '800.0',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: ScreenUtil().setSp(22.0),
                        color: Color(0xFF19688D),
                        fontFamily: 'helvetica'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(78.5),
            ),
            Text(
              'Please use the following communication for your payment: Draft Invoice (*228) (AP240) ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(15.0),
                  color: Color(0xFF686868),
                  fontFamily: 'helvetica'),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(76.5),
            ),
            GestureDetector(
              onTap: () => showPaymentOption(context),
              child: Container(
                height: ScreenUtil().setHeight(52.0),
                width: ScreenUtil().setWidth(237.0),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.21, 0.7],
                        colors: [Color(0xFF17987D), Color(0xFF19688D)]),
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 4.0,
                          offset: Offset(1, 2))
                    ]),
                child: Center(
                  child: Text(
                    'Proceed',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(18.0),
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }

  
}
