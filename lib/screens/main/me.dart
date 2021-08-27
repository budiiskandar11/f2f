import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/widgets/other/detailTile.dart';
import 'package:foodtofit/widgets/cards/meCard.dart';

class MeScr extends StatefulWidget {
  @override
  _MeScrState createState() => _MeScrState();
}

class _MeScrState extends State<MeScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
            MeCard(name: 'Aimal Naseem, ',age: 23,designation: 'Software Engineer',image: 'assets/3c73d130ecbc61a9e39d180f0b27a2aa@3x.png',location: 'LA, California',description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
            Padding(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(24.5)),
              child: Text(
                'Personal Details',
                style: TextStyle(
                    fontFamily: 'helvetica',
                    height: 1,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF19688D),
                    fontSize: ScreenUtil().setSp(15.0)),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(13.5),
            ),
            Container(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(24.5)),
              width: ScreenUtil().setWidth(185.31),
              child: Divider(
                color: Color(0xFF707070),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(26.5),
            ),
            ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(25.5)),
              physics: ClampingScrollPhysics(),
              itemCount: personalDetail.length,
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                height: ScreenUtil().setHeight(21.0),
              ),
              itemBuilder: (BuildContext context, int index) => DetailTile(
                label: detailLabel[index],
                detail: personalDetail[index],
              ),
            )
          ]),
        ),
      ),
    );
  }

  List<String> detailLabel = [
    'User Name',
    'Height',
    'Gender',
    'Date of Birth',
    'Location',
    'Zip/Postal Code',
    'Time Zone',
    'Email Address',
    'Units',
    'Starting Weight',
    'Current Weight'
  ];

  List<String> personalDetail = [
    'loremipsum1122',
    '175 cm',
    'Male',
    '20 Feb 1989',
    'U S A',
    '111111',
    'LA, California',
    'aimalnaseem@gmail.com',
    'Kg, cm, cal, km, cups',
    '90 kg on 04/07/2016',
    '70 kg'
  ];
}
