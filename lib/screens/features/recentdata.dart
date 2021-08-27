import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/main/home.dart';
import 'package:foodtofit/widgets/headers/header.dart';
import 'package:foodtofit/widgets/fields/currentstaticsfield.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class RecentDataScr extends StatefulWidget {
  @override
  _RecentDataScrState createState() => _RecentDataScrState();
}

class _RecentDataScrState extends State<RecentDataScr> {

  TextEditingController weightCtrl = TextEditingController();
  TextEditingController bmiCtrl = TextEditingController();
  TextEditingController bodyfatCtrl = TextEditingController();
  TextEditingController cholestrolCtrl = TextEditingController();
  TextEditingController skeletalmuscleCtrl = TextEditingController();
  TextEditingController metabolicageCtrl = TextEditingController();
  TextEditingController visceralfat1Ctrl = TextEditingController();
  TextEditingController visceralfat2Ctrl = TextEditingController();
  TextEditingController visceralfat3Ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
              child: Column(
          children: [
            Header(title: 'Weekly Progress', titlepadding: 89.0),
            SizedBox(
              height: ScreenUtil().setHeight(29.5),
            ),
            Text(
              'Please enter your recent data',
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: -0.9,
                  fontWeight: FontWeight.w300,
                  fontSize: ScreenUtil().setSp(18.0),
                  color: Color(0xFF19688D),
                  fontFamily: 'helvetica'),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(38.0),
            ),
            CurrentStaticsField(label: 'Weight',controller: weightCtrl),
            SizedBox(
                height: ScreenUtil().setHeight(11.0),
            ),
            CurrentStaticsField(label: 'BMI',controller: bmiCtrl),
            SizedBox(
                height: ScreenUtil().setHeight(11.0),
            ),
            CurrentStaticsField(label: 'Body fat',controller: bodyfatCtrl),
            SizedBox(
                height: ScreenUtil().setHeight(11.0),
            ),
            CurrentStaticsField(label: 'Cholesterol',controller: cholestrolCtrl),
            SizedBox(
                height: ScreenUtil().setHeight(11.0),
            ),
            CurrentStaticsField(label: 'Skeletal muscle',controller: skeletalmuscleCtrl),
            SizedBox(
                height: ScreenUtil().setHeight(11.0),
            ),
            CurrentStaticsField(label: 'Metabolic age',controller: metabolicageCtrl),
            SizedBox(
                height: ScreenUtil().setHeight(11.0),
            ),
            CurrentStaticsField(label: 'Visceral fat',controller: visceralfat1Ctrl),
            SizedBox(
                height: ScreenUtil().setHeight(11.0),
            ),
            CurrentStaticsField(label: 'Visceral fat',controller: visceralfat2Ctrl),
            SizedBox(
                height: ScreenUtil().setHeight(11.0),
            ),
            CurrentStaticsField(label: 'Visceral fat',controller: visceralfat3Ctrl),
            SizedBox(
                height: ScreenUtil().setHeight(48.0),
            ),
            GestureDetector(
              onTap: () => pushNewScreen(context, screen: HomeScr(),withNavBar: true),
              child: Container(
                height: ScreenUtil().setHeight(43.16),
                width: ScreenUtil().setWidth(237.0),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0, 0.5],
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
                    'Done',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(16.0),
                        fontWeight: FontWeight.normal,
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
