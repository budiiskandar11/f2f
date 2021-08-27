import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/main/landingpage.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OTPDailog extends StatefulWidget {
  @override
  _OTPDailogState createState() => _OTPDailogState();
}

class _OTPDailogState extends State<OTPDailog> {
  TextEditingController _pinPutController = TextEditingController();
  FocusNode _pinPutFocusNode = FocusNode();
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent.withOpacity(0.3),
      body: BlurryContainer(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        bgColor: Colors.transparent,
        borderRadius: BorderRadius.circular(0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(116.0),
              ),
              Image.asset(
                'assets/Image 1@3x.png',
                height: ScreenUtil().setHeight(177.0),
                width: ScreenUtil().setWidth(178),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(22.0),
              ),
              Text(
                'Verification Code',
                style: TextStyle(
                  fontFamily: 'helvatica',
                  fontWeight: FontWeight.w700,
                  fontSize: ScreenUtil().setSp(19.0),
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(29.0),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(35.0)),
                child: Text(
                  'Please type the verification code sent to you form +00 000 000 0000',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'helvatica',
                    height: 1,
                    fontWeight: FontWeight.w400,
                    fontSize: ScreenUtil().setSp(15.0),
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(35.0),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(55.0)),
                child: PinPut(
                          fieldsCount: 4,
                          eachFieldHeight: ScreenUtil().setHeight(50.04),
                          eachFieldWidth: ScreenUtil().setWidth(53.56),
                          onSubmit: (String pin) => {},
                          focusNode: _pinPutFocusNode,
                          controller: _pinPutController,
                          selectedFieldDecoration: _pinPutDecoration,
                          followingFieldDecoration: _pinPutDecoration.copyWith(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(117.0),
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LandingPage())),
                              child: Container(
                  height: ScreenUtil().setHeight(77.66),
                  width: ScreenUtil().setWidth(77.66),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        stops: [0.0, 0.5],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF6CBD45), Color(0xFF30A949)]),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0.4, 0.9),
                          spreadRadius: 5.0,
                          blurRadius: 5.0)
                    ],
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/Path 5@3x.png',
                      height: ScreenUtil().setHeight(38.77),
                      width: ScreenUtil().setWidth(46.56),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
