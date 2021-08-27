import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/main/home.dart';
import 'package:foodtofit/screens/order/myorder.dart';
import 'package:foodtofit/screens/features/editprofile.dart';
import 'package:foodtofit/screens/features/deliveryaddress.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../../widgets/cards/accountCard.dart';

class MyAccountScr extends StatefulWidget {
  @override
  _MyAccountScrState createState() => _MyAccountScrState();
}

class _MyAccountScrState extends State<MyAccountScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            icon: Icon(
                                Icons.arrow_back_ios_rounded,
                                size: 24),
                            color: Colors.white,
                            onPressed: () => Navigator.pop(context)),
                            SizedBox(width: ScreenUtil().setWidth(92.0),),
                        Text('My Account',
                          style: TextStyle(
                            fontSize: ScreenUtil().setHeight(18.0),
                            fontFamily: 'helvetica',
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(34.0),),
          ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding:
                EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(25.5)),
            physics: ClampingScrollPhysics(),
            itemCount: accountOptions.length,
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              height: ScreenUtil().setHeight(17.0),
            ),
            itemBuilder: (BuildContext context, int index) => AcountOptionsCard(
              optionText: accountOptions[index],
              navigation: () {
                switch (index) {
                  case 0:
                    pushNewScreen(context, screen: MyOrderScr(), withNavBar: false);
                    break;
                  case 1:
                    pushNewScreen(context, screen: EditProfileScr(), withNavBar: true);
                    break;
                  case 2:
                    pushNewScreen(context, screen: DeliveryAddressScr(), withNavBar: false);
                    break;
                  case 3:
                    pushNewScreen(context, screen: MyOrderScr(), withNavBar: false);
                    break;
                  case 4:
                    pushNewScreen(context, screen: MyOrderScr(), withNavBar: false);
                    break;
                  case 5:
                    pushNewScreen(context, screen: MyOrderScr(), withNavBar: false);
                    break;
                  
                }
              },
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(17.0),),
          Container(
      width: double.infinity,
      height: ScreenUtil().setHeight(45.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0)
      ),
      margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(25.5)),
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(14.0),left: ScreenUtil().setWidth(31.5)),
      child: Text(
            'Log Out',
            style: TextStyle(
                color: Color(0xFF545455),
                fontFamily: 'helvetica',
                fontSize: ScreenUtil().setSp(15.0)),
          ),
    )
          ],
        ),
      ) 
    );
  }
  List<String> accountOptions = [
    'My Order',
    'My Profile',
    'Deliver Plus',
    'Rewards',
    'Payment Methods',
    'Saved Addresses',
  ];
}