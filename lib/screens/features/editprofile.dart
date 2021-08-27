import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/main/home.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../../widgets/other/detailTile.dart';
import 'myaccount.dart';

class EditProfileScr extends StatefulWidget {

  @override
  _EditProfileScrState createState() => _EditProfileScrState();
}

class _EditProfileScrState extends State<EditProfileScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                height: ScreenUtil().setHeight(134.51),
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
                      height: ScreenUtil().setHeight(15.5),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              icon: ImageIcon(
                                  AssetImage('assets/menu-svgrepo-com@3x.png'),
                                  size: 20),
                              color: Colors.white,
                              onPressed: () => pushNewScreen(context, screen: MyAccountScr(),withNavBar: false)),
                          Text('Edit profile',
                            style: TextStyle(
                              fontSize: ScreenUtil().setHeight(18.0),
                              fontFamily: 'helvetica',
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            ),
                          ),
                          IconButton(
                              icon: ImageIcon(
                                  AssetImage('assets/edit-svgrepo-com@3x.png'),
                                  color: Colors.white,
                                  size: 20),
                              onPressed: () {})
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    height: ScreenUtil().setHeight(81.91),
                    width: ScreenUtil().setWidth(86.95),
                    margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(12.0)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                      image: DecorationImage(image: AssetImage('assets/3c73d130ecbc61a9e39d180f0b27a2aa@3x.png'))
                    ),
                  ),
                  Positioned(
                    bottom: 0,left: ScreenUtil().setWidth(30.8),
                                    child: Container(
                        height: ScreenUtil().setHeight(23.77),
                      width: ScreenUtil().setWidth(23.77),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5.0,
                            offset: Offset(1,0)
                          )
                        ]

                      ),
                      child: Center(child: Image.asset('assets/Unknown copy@3x.png',height: 14.0,width: 14.1,),),
                      ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(31.5),
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